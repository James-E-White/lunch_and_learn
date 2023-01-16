require 'rails_helper'

RSpec.describe Recipe do
  describe 'initialize' do
   it 'exists' do
    info = {
            uri: "https://www.seriouseats.com/recipes/",
            label: "Palm Sugar Simple Syrup",
            image: "https://edamam-product-images.com"

        }
    
    country = 'Thailand'
    recipe = Recipe.new(country, info)

    expect(recipe).to be_an_instance_of(Recipe)
    expect(recipe.label).to eq("Palm Sugar Simple Syrup")
    expect(recipe.url).to eq(nil)
    expect(recipe.image).to eq("https://edamam-product-images.com")
   end
  end
end