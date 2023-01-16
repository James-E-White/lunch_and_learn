class LearningResources
  attr_reader :video,
              :images,
              :country

  def initialize(video, images, country)
    @video = video
    @images = images
    @country = country
  end
end
