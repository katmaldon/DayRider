class ApplicationController < ActionController::Base
    before_action :current_renter 
    before_action :authenticate_renter

    def current_renter
        @current_renter = Renter.find_by(id: session[:renter_id])     
    end

    def authenticate_renter
        unless @current_renter 
            redirect_to new_login_path
        end
    end
end
