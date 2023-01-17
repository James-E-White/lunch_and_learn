require 'rails_helper'

RSpec.describe RestCountry, :vcr do 
  describe 'initialize' do
    it 'exists' do
      data = {
        common: 'Ireland'
      }

      country = RestCountry.new(data)

      expect(country).to be_instance_of(RestCountry)
      expect(country.name).to eq('Ireland')
    end
  end
end
