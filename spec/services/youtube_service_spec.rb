require 'rails_helper'

RSpec.describe YoutubeService, :vcr do
  describe 'find video' do
    it 'returns video for that country' do
      response = YoutubeService.find_video('Thailand')

      expect(response).to be_a(Hash)
      expect(response).to have_key(:items)

      video = response[:items][0]
      expect(video[:id]).to have_key(:videoId)
      expect(video[:id][:videoId]).to be_a(String)
      expect(video[:id][:videoId]).to eq("uw8hjVqxMXw")

      expect(video[:snippet]).to have_key(:title)
      expect(video[:snippet][:title]).to be_a(String)
      expect(video[:snippet][:title]).to eq("A Super Quick History of Laos")
    end
  end
end
