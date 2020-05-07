class BikesController < ApplicationController
  skip_before_action :authenticate_renter, only: [:index]
  before_action :find_bike, only: [:show, :edit, :update, :destroy]

  def index
    @bikes = Bike.all
  end

  def show
    # raise session.inspect
    session[:bike] = @bike
  end

  # def new
  #   @bike = Bike.new
  #   @bike_types = Bike.all.map {|bike| bike.bike_type}.uniq
  #   @models = Bike.all.map {|bike| bike.model}.uniq
  #   @sizes = Bike.all.map {|bike| bike.size}.uniq
  # end

  # def create
  #   raise params.inspect
  #   @bike = Bike.create(bike_params)
  #   #if @bike.valid?
  #     #flash[:success] = "Your bike was added."
  #     redirect_to bike_path(@bike)
  #   #else
  #     #flash[:my_errors] = bike.errors.full_message
  #     #redirect_to new_bike_path
  #   #end
  # end

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
