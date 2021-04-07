# module V1 
    class V1::RegistrationsController < ApplicationController
        def create 
            # binding.pry
            partner = Partner.create!(
                # company_name: params['partner']['company_name']
                # contact_name: params['partner']['contact_name']
                # zipcode: params['partner']['zipcode']
                # website: params['partner']['website']
                # about_us: params['partner']['about_us']
                email: params['partner']['email'], 
                password: params['partner']['password'],
                password_confirmation: params['partner']['password_confirmation']
            )
            binding.pry
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