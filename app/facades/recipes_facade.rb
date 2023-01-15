class RecipesFacade
    def self.get_recipes(country)  
     RecipesService.get_recipes(country)[:hits].map do |data|
      Recipe.new(country, data[:recipe])
    end
  end
end