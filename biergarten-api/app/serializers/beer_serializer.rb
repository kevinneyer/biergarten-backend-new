class BeerSerializer < ActiveModel::Serializer
  attributes :id, :brewery, :name, :style, :abv, :img_url, :description, :tasting_notes, :likes, :recommended_drinking, :url
  has_many :reviews
  has_many :favorites

  def reviews
    self.object.reviews.map do |review|
      {review_id: review.id,
      content: review.content,
      user: review.user.username,
      rating: review.rating,
      user_image: review.user.image,
      user_id: review.user.id,
      user_reviews: review.user.reviews
    }
    end 
  end 

  def favorites
    self.object.favorites.map do |favorite|
      {favorite_id: favorite.id,
      user: favorite.user.username}
    end 
  end 
  
end
