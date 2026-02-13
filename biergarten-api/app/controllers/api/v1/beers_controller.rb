class Api::V1::BeersController < ApplicationController
  
    def index
      beers = Beer.all
      styles = Beer.distinct.pluck(:style).sort

      if params[:style]
        beers = beers.where('LOWER(style) = ?', params[:style].gsub('-', ' ').downcase) if params[:style].present? 
      end

      render json: {
        beers: ActiveModelSerializers::SerializableResource.new(
          beers,
          each_serializer: BeerSerializer
        ),
        styles: styles
      }
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

    def apply_filters(beers)
      if params[:style].present?
        # Convert hyphenated params back to noramlly spaced. Needed to match how style is formatted in DB.
        style_query = params[:style].gsub('-', ' ').titleize
        # use case-insensitive search to be more flexible
        # beers = beers.where('LOWER(style) = ?', params[:style].gsub('-', ' ').downcase) if params[:style].present? 
        beers = beers.where(style: style_query)
      end
     
      beers
    end

end
