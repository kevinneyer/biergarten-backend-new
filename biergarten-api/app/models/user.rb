class User < ApplicationRecord
  has_many :reviews
  has_many :beers, through: :reviews 
  has_many :favorites
  has_many :beers, through: :favorites

  has_many :active_relationships, class_name: "Relationship", foreign_key: :follower_id, dependent: :destroy
  has_many :followeds, through: :active_relationships, source: :followed
  has_many :passive_relationships, class_name: "Relationship", foreign_key: :followed_id, dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower

  has_and_belongs_to_many :likes

  validates :username, uniqueness: true

  has_secure_password
  
end
