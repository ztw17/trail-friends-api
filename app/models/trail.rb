class Trail < ApplicationRecord
    has_many :trail_tags
    has_many :tags, through :trail_tags
    belongs_to :creator, :class_name => "User" 
end
