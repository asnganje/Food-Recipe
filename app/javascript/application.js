
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import "@hotwired/turbo-rails"
import "controllers"

  document.addEventListener("turbo:load", function () {
  
    let open = document.getElementById('add-form-button');
    open.addEventListener('click', function () {
      let form = document.querySelector('.add_recipe_food_form');
      form.classList.toggle('hidden');
    });

  });
  