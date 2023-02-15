class Food < ApplicationRecord
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
end
