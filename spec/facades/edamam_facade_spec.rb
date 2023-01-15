require 'rails_helper'

RSpec.describe EdamamFacade do
  describe 'recipes_from' do
    it 'returns a collection of recipes based on a country' do
      recipes = EdamamFacade.recipes_from('Thailand')
      expect(recipes[0]).to be_an_instance_of(Recipe)
    end
  end
end
