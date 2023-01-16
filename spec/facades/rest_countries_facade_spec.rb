require 'rails_helper'

RSpec.describe RestCountriesFacade do
      it 'exists' do 
        country = RestCountriesFacade.new

        expect(country).to be_an_instance_of(RestCountriesFacade)

      end

    describe 'get_all_countries' do 
      it 'returns the country as an object' do 
       expect(RestCountriesFacade.get_all_countries).to be_an(Array)
       expect(RestCountriesFacade.get_all_countries.first).to be_a(RestCountry)
      end
    end
    
    describe 'random_country' do 
      it 'returns a random country' do 
        expect(RestCountriesFacade.random_country.first).to be_an(Array)
      end
    end
  
end