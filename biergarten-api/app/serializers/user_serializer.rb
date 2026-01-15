class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password, :image
  has_many :favorites
  has_many :reviews
  has_many :followers
  has_many :followeds
  has_many :active_relationships
  has_many :passive_relationships
  has_many :likes

  def reviews
    self.object.reviews.map do |review|
      {
        content: review.content,
        beer: review.beer.name,
        beer_img: review.beer.img_url,
        beer_id: review.beer.id,
        rating: review.rating,
        user_id: review.user.id,
        review_id: review.id
      }
    end 
  end 

  def favorites
    self.object.favorites.map do |favorite|
      {beer: favorite.beer.name,
      beer_id: favorite.beer.id,
      image: favorite.beer.img_url,
      brewery: favorite.beer.brewery,
      favorite_id: favorite.id}
    end 
  end 

end
