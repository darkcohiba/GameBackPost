class User < ApplicationRecord
    has_many :games
    # has_secure_password
    
    # validates :email, presence: true
    # validates :password, presence: true
    # validates :name, presence: true
end
