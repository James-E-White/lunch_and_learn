class LearningResourcesFacade
    def self.country_resources(country)
        video = YoutubeService.find_video(country)[:items][0]
        images = PhotoService.find_photos(country)[:results]
        LearningResources.new(video, images, country)
    end
end