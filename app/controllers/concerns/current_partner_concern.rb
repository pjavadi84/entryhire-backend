module CurrentPartnerConcern 
    extend ActiveSupport::Concern 

    included do
        before_action :set_current_partner
    end

    def set_current_partner
        if session[:partner_id]
            @current_partner = Partner.find(session[:partner_id])
        end
    end
end