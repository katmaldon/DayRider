class RentalsController < ApplicationController

    before_action :find_rental, only: [:show, :edit, :update, :destroy]

    def index
        redirect_to bikes_path #placeholder to avoid routing errors
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
        bike_id_value = session[:bike]["id"]
        # renter_id_value = session[:renter]["id"]
        # byebug
        @rental = Rental.create(renter_id:20, bike_id: bike_id_value)
        redirect_to rental_path(@rental.id)
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

    def rental_params(*args)
        params.require(:rental).permit(*args)
    end

    def find_rental
        @rental = Rental.find(params[:id])
    end

end
