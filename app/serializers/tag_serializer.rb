class TagSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :trails, include_nested_attributes: :false
end
