class User < ApplicationRecord
    has_many :games, dependent: :destroy
    has_secure_password
    
    validates :email, presence: true, uniqueness: true
    # validates :password, presence: true, uniqueness: true
    # validates :name, presence: true
end
