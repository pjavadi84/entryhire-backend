# module V1 
    class V1::RegistrationsController < ApplicationController
        def create 
            binding.pry
            partner = Partner.create!(
                email: params['partner']['email'], 
                password: params['partner']['password'],
                password_confirmation: params['partner']['password_confirmation']
            )

            if partner
                session[:partner_id] = partner.id
                render json: {
                    status: :created, 
                    partner: partner
                }
            else
                render json: { status: 500 }
            end
        end

    end
# end