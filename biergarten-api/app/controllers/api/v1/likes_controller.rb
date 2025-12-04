class Api::V1::LikesController < ApplicationController
  def index
    
  end
  def create
      favorite = Favorite.create({beer_id: params[:beer][:beer_id], user: session_user})
      render json: favorite
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