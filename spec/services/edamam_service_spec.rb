require 'rails_helper'

RSpec.describe EdamamService do
  describe 'conn' do
    it 'connects to the Edamam API' do
      conn = EdamamService.conn
      expect(conn.params).to have_key :app_id
      expect(conn.params).to have_key :app_key
      expect(conn.params).to have_key :type
    end
  end

  
  describe 'self.get_recipes' do
    xit 'returns a specific country' do
     country = "Thailand"
      
     get "/api/v1/recipes?country=#{country}"

     expect(response).to be_successful
       
      expect(recipes).to be_a(Hash)
      expect(recipes[:hits]).to be_a(Array)
    end
  end
end
