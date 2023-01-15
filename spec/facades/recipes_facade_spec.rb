require 'rails_helper'

RSpec.describe RecipesFacade do
  describe 'recipes_from' do
    it 'returns a collection of recipes based on a country' do
      recipes = RecipesFacade.get_recipes('Thailand')
      expect(recipes).to be_an(Array)
      expect(recipes[0]).to be_an_instance_of(Recipe)
      expect(recipes[0].label).to eq("Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)")
      expect(recipes[0].uri).to eq("http://www.edamam.com/ontologies/edamam.owl#recipe_3a551652abf5a1cef1421660d1b657d9")
      expect(recipes[0].image).to_not eq(nil)
 
    end
  end
end
