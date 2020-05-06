class BikesController < ApplicationController

  before_action :find_bike, only: [:show, :edit, :update, :destroy]
  
  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.create(bike_params)
    #if @bike.valid?
      #flash[:success] = "Your bike was added."
      redirect_to bike_path(@bike)
    #else
      #flash[:my_errors] = bike.errors.full_message
      #redirect_to new_bike_path
    #end
  end

  def edit
  end

  def update
    @bike.update(bike_params)
    redirect_to bike_path(@bike)
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  def availability
    @available_bikes = Bike.available_bikes
  end
  


  private

  def bike_params
    params.require(:bike).permit(:model, :size, :bike_type)
  end

  def find_bike
    @bike = Bike.find(params[:id])
  end

end
