module v1
    class SessionController < ApplicationController
        def create 
            # This wrap up the partner object that comes from our frontend application
            partner = Partner.find_by(email: params["partner"]["email"])
            .try(:authenticate, params["partner"]["password"])

            if partner
                session[:partner_id] = partner.id
                render json: { 
                    status: "Parner created!",
                    logged_in: true,
                    partner: partner
                }
            else
                render json: { status: 401 }
            end
        end
    end
end