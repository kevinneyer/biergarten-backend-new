class Like < ApplicationRecord
  belongs_to :user
  belongs_to :beer, counter_cache: true

  validates :user_id, uniqueness: { scope: :beer_id, message: "has already liked" }
end
