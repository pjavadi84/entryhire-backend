module V1
    class SessionsController < ApplicationController
        include CurrentPartnerConcern
        skip_before_action :verify_authenticity_token

        def logged_in
            if @current_partner
                render json: {
                    logged_in: true,
                    partner: @current_partner
                }
            else
                render json: {
                    logged_in: false
                }
            end
        end

        def logout
            reset_session
            render json: { status: 200, logged_out: true }
        end


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