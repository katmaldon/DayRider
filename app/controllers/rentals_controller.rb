class RentalsController < ApplicationController
    before_action :find_rental, only: [:show, :edit, :update, :destroy]
    def index
        
    end
    
    def show
        
    end

    def new
        @rental = Rental.new
        @shops = Shop.all
        @renters = Renter.all
        @bikes = Bike.available_bikes
    end
    
    def create
        @rental = Rental.create(rental_params(:shop_id, :renter_id, :bike_id))
        # byebug
        redirect_to bike_path(@rental.bike)
    end
    
    def edit
    
    end
    
    def update
        @rental.update(rental_params(:comment, :rating))
        redirect_to rental_path(@rental)
    
    end
    
    def destroy
        @rental.destroy
        redirect_to new_rental_path
    end

    private
    def find_rental
        @rental = Rental.find(params[:id])
    end

    def rental_params(*args)
        params.require(:rental).permit(*args)
    end
end
