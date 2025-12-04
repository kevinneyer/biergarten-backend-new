class Beer < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :favorites
  has_many :users, through: :favorites

  has_many :likes
  has_many :users, through: :likes
end
