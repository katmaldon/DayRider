class RentalsController < ApplicationController
    before_action :find_rentals, only: [:show, :edit, :update, :destroy]
    def index
        
    end
    
    def show
        
    end

    def new
        @rental = Rental.new
        @shops = Shop.all
        @renters = Renter.all
        @bikes = Bike.all
    end
    
    def create
    
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def destroy
        @rental.destroy
    end

    private
    def find_bike_rentals
        @rental = Rental.find(params[:id])
    end

    def bike_rental_params(*args)
        params.require(:rental).permit(*args)
    end
end
