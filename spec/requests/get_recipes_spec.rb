require 'rails_helper'

RSpec.describe 'get recipes for a country' do
  it 'returns recipes for a country' do
   
    get '/api/v1/recipes?country=thailand'

    expect(response).to be_successful

    recipe = JSON.parse(response.body, symbolize_names: true)[:data][0]

    expect(recipe[:attributes]).to have_key(:label)
    expect(recipe[:attributes][:label]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:uri)
    expect(recipe[:attributes][:uri]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:image)
    expect(recipe[:attributes][:image]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:country)
    expect(recipe[:attributes][:country]).to be_a(String)


  end
end
