class Api::V1::RelationshipsController < ApplicationController

    def index
        relationships = Relationship.all
        render json: relationships
    end

    def show
        relationship = Relationship.find(params[:id])
        render json: relationship
    end

    def create
        relationship = Relationship.create(relationship_params)
        render json: relationship
    end

    def destroy
        relationship = Relationship.find(params[:id])
        relationship.destroy
    end

    private

    def relationship_params
      params.require(:relationship).permit(:follower_id, :followed_id)
    end

end