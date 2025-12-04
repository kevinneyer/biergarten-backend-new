class Beer < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :favorites
  has_many :users, through: :favorites
  has_and_belongs_to_many :likes
end
