class YoutubeService
    def self.conn
        Faraday.new("https://www.googleapis.com") do |f|
            f.params['key'] = ENV['Youtube_key']
        end
    end

    def self.find_video(country)
    response = conn.get("/youtube/v3/search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&maxResults=1&q=#{country}")
     JSON.parse(response.body, symbolize_names: true)
    end
end