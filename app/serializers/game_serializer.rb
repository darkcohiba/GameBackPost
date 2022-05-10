class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :game
  belongs_to :user
  
end
