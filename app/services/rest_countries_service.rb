class RestCountriesService
  def self.conn
    Faraday.new("https://restcountries.com")
  end

  def self.get_all_countries
    response = conn.get("/v3.1/all")
    JSON.parse(response.body, symbolize_names: true)
  end

  # def self.random_country
  #   response = conn.get("/v3.1/all?fields=name").sample
  #   JSON.parse(response.body, symbolize_names: true)
  # end

end