class RentersController < ApplicationController
    skip_before_action :authenticate_renter, only: [:new, :create]


    def index
        @renters = Renter.all
    end

    def show
        @renter = Renter.find(params[:id])
    end

    def new
        @renter = Renter.new
        @shops = Shop.all
    end

    def create
        renter = Renter.create(renter_params)
        if renter.valid?
            session[:renter_id] = renter.id
            redirect_to renter_path(renter)
        else
            flash[:errors] = renter.errors.full_messages
            redirect_to new_renter_path
        end
    end

    private

    def renter_params
        params.require(:renter).permit(:name, :age, :password, :shop_id)
    end
end
