require 'rails_helper'

RSpec.describe LearningResourcesFacade, :vcr do
  describe 'co_resources' do
   it 'returns images from image search' do
     response = LearningResourcesFacade.country_resources("Thailand")

        expect(response).to be_instance_of(LearningResources)
        expect(response.country).to eq("Thailand")
        expect(response.video).to be_a(Hash)
        expect(response.images).to be_an(Array)

    end
  end
end
