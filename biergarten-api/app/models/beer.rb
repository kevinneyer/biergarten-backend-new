class Beer < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :favorites
  has_many :users, through: :favorites

  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :users
end
