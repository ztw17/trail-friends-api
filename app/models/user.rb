require 'bcrypt'

class User < ApplicationRecord
    has_many :friendships
    has_many :friends, through: :friendships
    has_many :created_trails, :class_name => "Trail", :foreign_key => "creator_id"
    has_many :trail_tags, through: :trails
    has_many :tags, through: :trail_tags

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
    # validates :location, presence, true

    # Add avatar upload functionality
    has_one_attached :avatar
end
