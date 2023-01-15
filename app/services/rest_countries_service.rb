class RestCountriesService
  def self.conn
    Faraday.new("https://restcountries.com")
  end

  def self.get_all_countries
    response = conn.get("/v3.1/all?fields=name")
    JSON.parse(response.body, symbolize_names: true)
  end

end