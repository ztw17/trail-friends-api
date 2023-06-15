class TrailTagSerializer < ActiveModel::Serializer
  attributes :id, :trail_id, :user_id
  belongs_to :tag, include_nested_attributes :false
  belongs_to :trail, include_nested_attributes :false
end
