class RelationshipSerializer < ActiveModel::Serializer
    attributes :follower, :followed, :id

    def follower
        {follower_id: self.object.follower.id, 
        username: self.object.follower.username,
        image: self.object.follower.image}
    end 

    def followed
        {followed_id: self.object.followed.id, 
        username: self.object.followed.username,
        image: self.object.followed.image}
    end 


end