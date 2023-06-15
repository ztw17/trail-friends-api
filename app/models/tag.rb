class Tag < ApplicationRecord
    has_many trail_tags
    has_many :trails, through: :trail_tags
end
