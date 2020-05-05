class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
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
    @bike = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update(bike_params)
    redirect_to bike_path(@bike)
  end

  def delete
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to bikes_path
  end


  private

  def bike_params
    params.require(:bike).permit(:model, :size, :bike_type)
  end

end
