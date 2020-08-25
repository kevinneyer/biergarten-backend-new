class Beer < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :favorites
    has_many :users, through: :favorites

    def self.my_ratings
      ratings= []
      Review.all.map do |review|
        if review.beer  == self
          ratings << review.rating
        end
      end
      ratings
    end
    
    def self.ratings_average
        count = 0
        self.my_ratings.each do |rating|
            count += rating 
        end
       count #/ self.my_ratings.count 
    end
   
    def self.average 
        self.ratings_average/ self.my_ratings.count
    end

end
