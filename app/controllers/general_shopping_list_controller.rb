class GeneralShoppingListController < ApplicationController
  def index
    @foods = current_user.foods.count
    @foodslist = current_user.recipe_ids
    @shopping_list = RecipeFood.where(recipe_id: @foodslist)
    @missing_food = []
    @total = 0
    @foodslist.each do |food|
      if food.food.quantity < food.quantity
        @missing_food.push(food)
        @total += food.food.price * (food.quantity - food.food.quantity)
      end
    end
  end
end
