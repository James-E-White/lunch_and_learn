require 'rails_helper'

RSpec.describe Video, :vcr do
  describe 'initialize' do 
    it 'has attributes' do 
        video_data = YoutubeService.find_video('Thailand')[:items][0]
        video = Video.new(video_data)

        expect(video.title).to eq('A Super Quick History of Laos')
        expect(video.youtube_video_id).to eq('uw8hjVqxMXw')
      end
    end
end