class Api::V1::LikesController < ApplicationController
  def index
    
  end
  def create
     # update param args
      # like = Like.create({beer_id: , user_id: session_user.id})
      # render json: like
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy  
  end

  private

  # def like_params
  #   params.require(:favorite).permit!
  # end

end