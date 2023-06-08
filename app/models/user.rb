require 'bcrypt'

class User < ApplicationRecord
    has_many :friendships
    has_many :friends, through: :friendships

    # users.password_hash in the database is a :string
    include BCrypt

    has_secure_password

    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
    end

    # Add validations for the new fields
    # validates :name, presence: true
    # validates :username, presence: true, uniqueness: true
    # validates :password, presence: true, length: { minimum: 6 }

    # Add avatar upload functionality
    has_one_attached :avatar
end
