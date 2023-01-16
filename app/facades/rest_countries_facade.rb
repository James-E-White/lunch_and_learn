class RestCountriesFacade
  def self.get_all_countries
    RestCountriesService.get_all_countries.map do |country|
      RestCountry.new(country)
    end
  end

  def self.valid_country?(country)
    name.include?(country.titleize)
  end

  def self.random_country
    RestCountriesService.get_all_countries.sample
  end
end

