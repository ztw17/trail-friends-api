class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description
  has_many :tags, include_nested_attributes :false
end
