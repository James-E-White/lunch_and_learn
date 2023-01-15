require 'rails_helper'

RSpec.describe RestCountriesFacade do
  describe 'random country' do
      it 'creates a country object from a randomly selected country' do
        country = RestCountriesFacade.get_all_countries

        expect(country).to be_instance_of(Country)
        expect(country.name).to_not eq(nil)
      end
    end
  
end