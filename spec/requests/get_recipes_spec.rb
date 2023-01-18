require 'rails_helper'

RSpec.describe 'get recipes for a country', :vcr do
  it 'returns recipes for a country' do
   
    get '/api/v1/recipes?country=thailand'

    expect(response).to be_successful
    
    recipe = JSON.parse(response.body, symbolize_names: true)[:data][0]

    expect(recipe[:attributes]).to have_key(:label)
    expect(recipe[:attributes][:label]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:url)
    expect(recipe[:attributes][:url]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:image)
    expect(recipe[:attributes][:image]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:country)
    expect(recipe[:attributes][:country]).to be_a(String)


  end

  it 'returns and empty array [] when no country is passed in params' do 

    get '/api/v1/recipes?country=Sulawesi'

    expect(response).to be_successful
    
    recipe = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(recipe).to eq([])

  end

  it "returns a random country if user doesn't input one" do
    allow(RestCountriesFacade).to receive(:random_country).and_return('Ireland')
    
    get '/api/v1/recipes'

    expect(response).to be_successful
    recipe = JSON.parse(response.body, symbolize_names: true)[:data][0]
    
    expect(recipe[:attributes]).to have_key(:label)
    expect(recipe[:attributes][:label]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:url)
    expect(recipe[:attributes][:url]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:image)
    expect(recipe[:attributes][:image]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:country)
    expect(recipe[:attributes][:country]).to be_a(String)
  end
end
