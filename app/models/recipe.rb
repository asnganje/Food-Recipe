class Recipe < ApplicationRecord
    has_many :foods through: :recipe_foods
    has_many :recipe_foods
    belongs_to :user
end
