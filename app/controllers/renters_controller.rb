class RentersController < ApplicationController
    
    def index
    end
    
    def show
        @renter = Renter.find(params[:id])
    end
end
