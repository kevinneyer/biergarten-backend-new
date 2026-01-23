class Api::V1::BeersController < ApplicationController
  
    def index
      beers = Beer.all
      render json: beers
    end

    def show
        beer = Beer.find(params[:id])
        is_liked = false
        favorite_id =  nil

        if session_user
            like_array = session_user.likes.select{ |like| like.beer_id == beer.id}
            favorite_array = session_user.favorites.select{ |favorite| favorite.beer_id == beer.id}

            is_liked = like_array.length > 0
            favorite_id = favorite_array.length > 0 ? favorite_array[0].id : nil
        end

        render json: {
            beer: ActiveModelSerializers::SerializableResource.new(beer, each_serializer: BeerSerializer), 
            is_liked: is_liked,
            favorite_id: favorite_id
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
    
    def unlike
       if (session_user)
        like = Like.find_by(beer_id: params[:id], user_id: session_user.id)
        like.destroy
       else
        render json: { body: "ERROR"}
       end
    end

    private

    def beer_params
      params.require(:beer).permit!
    end

end
