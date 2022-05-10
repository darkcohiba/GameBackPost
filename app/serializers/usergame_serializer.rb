class UsergameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id
  belongs_to :game
  belongs_to :user
end