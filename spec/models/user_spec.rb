require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end
   describe 'relationships' do 
    it { should have_many :favorites }
   end
   describe 'create_api_key' do
      it 'generates random api key upon creation of User' do 
           user = User.create(
      name: "Athena Dao",
      email: "athenadao@bestgirlever.com",
      api_key: "c73243a4140a895181b7f9df53fe"
           )
        
        expect(user.api_key).to_not be_empty
        expect(user.api_key.length).to eq(28)
      end
    end
end