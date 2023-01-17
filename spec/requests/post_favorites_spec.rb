require 'rails_helper'

RSpec.describe 'Post Favorites' do
  before do
    headers = { 'CONTENT_TYPE' => 'application/json', 'Accept' => 'application/json'}
    body = { 'name': 'Athena Dao', 'email': 'athenadao@bestgirlever.com' }
    post '/api/v1/users', headers: headers, params: body, as: :json
    @user = User.last
  end
   it 'adds recipes to a favorite list for user' do
    headers = { 'CONTENT_TYPE' => 'application/json'}   
    body = { 'api_key': "#{@user.api_key}", 'country': 'Thailand', 'recipe_link': '', 'recipe_title': '' }
    post '/api/v1/favorites', headers: headers, params: body, as: :json

    expect(response).to be_successful
    expect(response.status).to eq(201)
  end
end
