require 'rails_helper'

RSpec.describe LearningResource do 
    describe 'initialize' do 
        it 'exists' do 
            country = "Thailand"

            video = {
                id: {
                    videoId: "uw8hjVqxMXw"
                },
                snippet: {
                    title: "A Super Quick History of Laos"
                }
            }

            images = [
                {
                    alt_description: "Beauty",
                "urls": {
                regular: "https://images.unsplash.com/photo-1561369408",
                 }
                },
            ]
          resource = LearningResource.new(video, images, country)
          expect(resource).to be_instance_of(LearningResource)
          expect(resource.country).to eq("Thailand")
          expect(resource.video).to eq({
              :id=>{:videoId=>"uw8hjVqxMXw"}, :snippet=>{:title=>"A Super Quick History of Laos"
              }})
          expect(resource.images).to eq([{:alt_description=>"Beauty", :urls=>{:regular=>"https://images.unsplash.com/photo-1561369408"}}])
        end
    end
end