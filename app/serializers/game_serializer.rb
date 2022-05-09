class GameSerializer < ActiveModel::Serializer
  attributes :score, :user_id
end


def name
  self.object.User.name  
end