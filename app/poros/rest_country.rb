class RestCountry
  attr_reader :name

  def initialize(data)
    @name = data[:common]
  end
end
