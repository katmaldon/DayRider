class LandingsController < ApplicationController

  def show
    @bikes = Bike.all
    @shops = Shop.all
  end

end
