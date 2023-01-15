class RestCountriesFacade
  def self.get_all_countries
    Country.new(RestCountriesService.get_all_countries)
  end
end