require 'rails_helper'

RSpec.describe Image, :vcr do
  describe '#initialize' do
    it 'has attributes' do
      data = PhotoService.find_photos('Thailand')
      image_data = data[:results][0]

      image = Image.new(image_data)

      expect(image).to be_a(Image)
      expect(image.alt_tag).to eq(image_data[:alt_description])
      expect(image.alt_tag.nil?).to eq(false)
      expect(image.url).to eq(image_data[:urls][:raw])
      expect(image.url.nil?).to eq(false)
    end
  end
end
