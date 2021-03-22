class ApplicationController < ActionController::Base
    # This is used to verify the user that is trying to interact with the app, filling out forms, is in fact
    # a user that actually exists
    skip_before_action :verfiy_authenticity_token, raise: false
end
