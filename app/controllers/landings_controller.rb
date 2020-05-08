class LandingsController < ApplicationController
  skip_before_action :authenticate_renter


  def show
    @bikes = Bike.all
  end

end
