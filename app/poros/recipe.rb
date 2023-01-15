class Recipe
    attr_reader :label,
                :uri,
                :image,
                :country


  def initialize(country, info)
    @country =  country
    @label = info[:label]
    @uri = info[:uri]
    @image = info[:image]
  
   

  end

end