class GameSerializer < ActiveModel::Serializer
  attributes :score, :game
  has_one :usergames
end

def name
  
end
