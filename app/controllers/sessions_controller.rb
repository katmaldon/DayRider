class SessionsController < ApplicationController
    skip_before_action :authenticate_renter, only: [:new, :create]

    def new
        
    end
    def create
        @renter = Renter.find_by(name: params[:session][:name])
        if @renter && @renter.authenticate(params[:session][:password])
            session[:renter_id] = @renter.id
            redirect_to renter_path(@renter)
        else
            flash[:error] = "Enter the correct name and/or Password"
            redirect_to new_login_path
        end
        
    end
    def destroy
        
        # raise session.inspect
        session.delete(:renter_id)
        redirect_to bikes_path
    end

end
