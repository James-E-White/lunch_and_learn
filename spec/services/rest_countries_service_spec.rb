require 'rails_helper'

RSpec.describe RestCountriesService do
  it "exists" do

    rest_countries = RestCountriesService.new

    expect(rest_countries).to be_an_instance_of(RestCountriesService)
  end

  describe 'get_all_countries' do 
    it 'returns all countries' do 
        expect(RestCountriesService.get_all_countries).to be_a(Array)
        expect(RestCountriesService.get_all_countries.first).to have_key(:name)
        expect(RestCountriesService.get_all_countries.first).to have_key(:capital)
        expect(RestCountriesService.get_all_countries.first[:name]).to be_a(Hash)
    end
     


  end
end