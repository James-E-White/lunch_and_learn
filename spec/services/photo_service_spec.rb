require 'rails_helper'

RSpec.describe PhotoService, :vcr do
    describe 'find photos' do 
     it 'returns 10 photos for country searched' do 
      response = PhotoService.find_photos("Thailand")

        expect(response).to be_a(Hash)
        photo = response[:results][0]

        expect(photo).to have_key(:alt_description)
        expect(photo[:alt_description]).to be_a(String)

        expect(photo).to have_key(:urls)
        expect(photo[:urls]).to have_key(:regular)
        expect(photo[:urls][:regular]).to be_a(String)
      end
   end
end