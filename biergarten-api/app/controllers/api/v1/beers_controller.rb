class Api::V1::BeersController < ApplicationController

    def index
      beers = Beer.all 
      render json: beers 
    end

    def show
        beer = Beer.find(params[:id])
        render json: beer 
    end

    def update
      beer = Beer.find(params[:id])
      beer.update(beer_params)
      render json: beer 
    end
    
    private

    def beer_params
      params.require(:beer).permit!
    end

end
