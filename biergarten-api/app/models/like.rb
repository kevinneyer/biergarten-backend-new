class Like < ApplicationRecord
  belongs_to :user
  belongs_to :beer, counter_cache: true
end
