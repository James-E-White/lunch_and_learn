require 'rails_helper'

RSpec.describe RecipesFacade, :vcr do
  describe 'recipes_from' do
    it 'returns a collection of recipes based on a country' do
      recipes = RecipesFacade.get_recipes('Thailand')
      expect(recipes).to be_an(Array)
      expect(recipes[0]).to be_an_instance_of(Recipe)
      expect(recipes[0].label).to eq("Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)")
      expect(recipes[0].url).to eq("https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html")
      expect(recipes[0].image).to_not eq(nil)
 
    end
  end
end
