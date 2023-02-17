require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context 'associations' do
    it { should belong_to(:user).class_name('User') }
    it { should have_many(:recipe_foods) }
  end

  context 'values not empty' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:preparation_time) }
    it { should validate_presence_of(:cooking_time) }
    it { should validate_presence_of(:description) }
  end
end
