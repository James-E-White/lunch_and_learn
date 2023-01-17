require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'relationships' do 
    it { should belong_to :user }
  end

#   describe 'validations' do 
#     it { should validate_presence_of(:api_key) }
#   end
end