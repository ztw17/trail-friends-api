class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :password, :created_at
  has_many :friendships, include_nested_attributes: :false
  # has_many :trails, include_nested_attributes: :false
end
