class ShopsController < ApplicationController
  skip_before_action :authenticate_renter


  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

end
