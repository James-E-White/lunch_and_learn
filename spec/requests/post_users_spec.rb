require 'rails_helper'

RSpec.describe 'Post User', :vcr do
  it 'create a new user from a post request' do
    user = User.create(
      name: "James",
      email: "james@fire.com"
    )
    headers = { "CONTENT_TYPE" => "application/json" }
    post '/api/v1/users', headers: headers, params: JSON.generate(user: user)

    last_user = User.last

   
    expect(response.status).to eq(200)
    expect(last_user.name).to eq("James")
    expect(last_user.email).to eq("james@fire.com")
  end

  #  it 'generates an error if no name is passed' do 
  #     user = User.create(name: "", email: "taylor@swift.com")
      
  #     headers = { "CONTENT_TYPE" => "application/json" }
  #     post '/api/v1/users', headers: headers, params: JSON.generate(user: user)
  #     expect(response).to_not be_successful
  #     expect(response.status).to eq(400)
  #   end
end