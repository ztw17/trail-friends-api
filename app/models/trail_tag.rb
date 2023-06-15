class TrailTag < ApplicationRecord
    belongs_to :trail 
    belongs_to :tag
end
