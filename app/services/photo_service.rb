class PhotoService
  def self.find_photos(country)
    response = conn.get("/search/photos?query=#{country}&page=1&per_page=10")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://api.unsplash.com') do |f|
      f.params['client_id'] = ENV['Unsplash_key']
    end
  end
end
