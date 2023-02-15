class GeneralShoppingListController < ApplicationController
  def index
    @foods = current_user.foods
    @foods_count = @foods.count
    @recipe_foods = RecipeFood.all
    @recipe_foods_count = @recipe_foods.count
    @missing_food_count = @recipe_foods_count - @foods_count  
    @foods_quantity = @foods.sum(:quantity)
    @recipe_foods_quantity = @recipe_foods.sum(:quantity)
    @missing_food_quantity = @recipe_foods_quantity - @foods_quantity
    @total_price = @foods.sum(:price)
    @total = 0
    @missing_food = []
    @recipe_foods.each do |recipe_food|
      if @foods.find_by(name: recipe_food.food.name).nil?
        @missing_food << recipe_food 
        @total += recipe_food.food.price
      end
    end
  end
end

