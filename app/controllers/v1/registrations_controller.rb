module v1 
    class RegistrationsController < ApplicationController
        def create 
            partner = Partner.create!(
                email: params['partner']['email'], 
                password: params['user']['password'],
                password_confirmation: params['user']['password_confirmation']
            )

            if partner
                session[:partner_id] = partiner.index
                render json: {
                    status: created, 
                    partner: partner
                }
            else
                render json: { status: 500 }
            end
        end
    end
end