class GeneralShoppingListController < ApplicationController
  def index
    @foods = current_user.foods
    @foods_count = @foods.count
    @recipe_foods = RecipeFood.all
    @recipe_foods_count = @recipe_foods.count
    @missing_food = []
    @foods.each do |food|
      @recipe_foods.each do |recipe_food|
        next unless food.name == recipe_food.food.name

        @missing_food << food if food.quantity < recipe_food.quantity
      end
    end
    @missing_food_count = @missing_food.count

    @missing_food_quantity = 0
    @missing_food.each do |food|
      @recipe_foods.each do |recipe_food|
        @missing_food_quantity += recipe_food.quantity - food.quantity
        @missing_food_quantity_price = @missing_food_quantity * food.price
      end
    end
  end
end
