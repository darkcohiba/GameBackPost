class User < ApplicationRecord
    has_many :usergames
    has_many :games, through: :usergames
    # has_secure_password
    
    # validates :email, presence: true
    # validates :password, presence: true
    # validates :name, presence: true
end
