class UserSerializer < ActiveModel::Serializer
  attributes :name, :email
  has_many :games, through: :usergames
end
