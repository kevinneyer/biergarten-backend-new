class Api::V1::BeersController < ApplicationController
  
    def index
      beers = Beer.all
      render json: beers
    end

    def show
        beer = Beer.find(params[:id])
        is_liked = false

        if session_user
            like_array = session_user.likes.select{ |like| like.beer_id == beer.id}
            is_liked = like_array.length > 0
        end

        render json: {
            beer: ActiveModelSerializers::SerializableResource.new(beer, each_serializer: BeerSerializer), 
            is_liked: is_liked
        }
    end

    def update
      beer = Beer.find(params[:id])
      beer.update(beer_params)
      render json: beer 
    end

    def like
      beer = Beer.find(params[:id])

      if (session_user)
        session_user.likes.create(beer_id: beer.id)
      else
        render json: { body: "ERROR"}
      end
      
    end
    
    private

    def beer_params
      params.require(:beer).permit!
    end

end
