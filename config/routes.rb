Rails.application.routes.draw do
  devise_for :users
  resources :recipe_foods
  resources :recipes 
  resources :foods
  resources :users
  resources :public_recipes
  resources :general_shopping_list
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
