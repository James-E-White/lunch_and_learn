class Recipe
    attr_reader :label,
                :url,
                :image,
                :country


  def initialize(country, info)
    @country =  country
    @label = info[:label]
    @url = info[:url]
    @image = info[:image]
  
   

  end

end