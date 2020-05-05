class RentersController < ApplicationController
    
    def index
    end
    
    def show
        @renter = Renter.find(params[:id])
    end

    def new
        @renter = Renter.new
    end

    def create
        renter = Renter.create(renter_params(:name, :age, :location))
        redirect_to renter_path(renter)
    end

    private

    def renter_params(*args)
        params.require(:renter).permit(*args)
    end
end
