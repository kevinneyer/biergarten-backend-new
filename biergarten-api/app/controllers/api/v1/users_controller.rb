class Api::V1::UsersController < ApplicationController
  wrap_parameters :user, include: [:username, :password, :image, :email]
  
    def index
      users = User.all 
      render json: users 
    end

    def show
      user = User.find(params[:id])
      render json: user 
    end

    def create
      user = User.new(user_params)
      if user.save 
        token = encode_token(user.id)
        render json: {user: user, token: token}
      else 
        render json: {errors: user.errors.full_messages}
      end
    end 

    def update
      user = User.find(params[:id])
      user = User.update(user_params)
      render json: user
    end
 
    private

    def user_params
      params.require(:user).permit!
    end
end
