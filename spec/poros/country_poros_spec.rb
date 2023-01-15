require 'rails_helper'

RSpec.describe Country do
  describe 'initialize' do
    it 'exists' do
      data = {
        common: "Ireland"
      }

      country = Country.new(data)

      expect(country).to be_instance_of(Country)
      expect(country.name).to eq("Ireland")
    end
  end
end