class LearningResourcesFacade
    def self.country_resources(country)
        binding.pry
        video = YoutubeService.find_video(country)[:items][0]
        images = PhotoService.find_photos(country)[:results]
        LearningResource.new(video, images, country)
    end
end