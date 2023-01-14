require 'rails_helper'

RSpec.describe EdamamFacade do
  describe 'recipes_from' do
    xit 'returns a collection of recipes based on a country' do
      recipes = EdamamFacade.recipes_from('Thailand')
      expect(recipes).to be_an_instance_of(Recipe)
    end
  end
end
