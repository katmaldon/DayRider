class OwnersController < ApplicationController

    def index
      @owners = Owner.all
      #@bikes = Owner.bike.all
    end

    def show
      @owner = Owner.find(params[:id])
    end



end
