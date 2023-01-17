require 'rails_helper'

RSpec.describe 'get user Favorites' do
  before do
    @headers = { 'CONTENT_TYPE' => 'application/json', 'Accept' => 'application/json'}
    body = { 'name': 'Athena Dao', 'email': "athenadao@bestgirlever.com" }
    post '/api/v1/users', headers: headers, params: body, as: :json
    @user = User.last
    
  end

  it 'gets all of the favorites for a paritcular user' do
    body_2 = { 'api_key': "#{@user.api_key}", 'country': 'Thailand', 'recipe_link': 'www.goodfood.com/Thangwa', 'recipe_title': 'Thangwa'}
    body_3 = { 'api_key': "#{@user.api_key}", 'country': 'Thailand', 'recipe_link': 'www.goodfood.com/Som Tum', 'recipe_title': 'Som Tum'}
    
    post '/api/v1/favorites', headers: @headers, params: body_2, as: :json
    post '/api/v1/favorites', headers: @headers, params: body_3, as: :json

    params = { 'api_key': "#{@user.api_key}" }
    get "/api/v1/favorites", headers: @headers, params: params

    expect(response).to be_successful
    expect(response.status).to eq(200)

    parsed_response = JSON.parse(response.body, symbolize_names: true)
    expect(parsed_response).to be_a Hash
    expect(parsed_response).to have_key(:data)

  end
end













































