require 'rails_helper'

RSpec.describe RecipesService do
  describe 'conn' do
    it 'connects to the Edamam API' do
      conn = RecipesService.conn
      expect(conn.params).to have_key :app_id
      expect(conn.params).to have_key :app_key

    end
  end
  
  
  describe 'self.get_recipes' do
    it 'returns a specific country' do
        
      recipes = RecipesService.get_recipes('Thailand')
     
      expect(recipes).to be_a(Hash)
      expect(recipes[:hits]).to be_a(Array)

      recipe = recipes[:hits][0][:recipe]
      
      expect(recipe).to have_key(:url)
      expect(recipes[:hits][0][:recipe][:url]).to be_a(String)
      expect(recipe).to have_key(:label)
      expect(recipes[:hits][0][:recipe][:label]).to be_a(String)
      expect(recipe).to have_key(:image)
      expect(recipes[:hits][0][:recipe][:image]).to be_a(String)
    end
  end
end
