class FriendshipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :friend_id
  belongs_to :user, include_nested_attributes: :false
  belongs_to :friend, include_nested_attributes: :false
end
