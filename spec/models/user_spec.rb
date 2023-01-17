require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    #it { should validate_uniqueness_of(:api_key) }
  end

   describe 'create_api_key' do
      it 'generates random api key upon creation of User' do 
           user = User.create(
      name: "Athena Dao",
      email: "athenadao@bestgirlever.com"
           )
        
        expect(response).to be_successful
        expect(response).to have_http_status(201)
        expect(user.api_key).to_not be_empty
        expect(user.api_key.length).to eq(28)
      end

      xit 'generates an error if no name is passed' do 
        user = User.create(name: "", email: "taylor@swift.com")
        expect(response).to be("Error")
      end
    end
end