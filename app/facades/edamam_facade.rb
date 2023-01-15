class EdamamFacade
    def self.recipes_from(country)  
     recipes= EdamamService.get_recipes(country)
     recipes.map do |recipe|
        Recipe.new(recipe, country)
     end
    end
end