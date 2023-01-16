class Api::V1::RecipesController < ApplicationController
  def index
    if params[:country]
      render json: RecipesSerializer.new(RecipesFacade.get_recipes(params[:country]))
    else
      country = RestCountriesFacade.random_country
      render json: RecipesSerializer.new(RecipesFacade.get_recipes(country.name))
    end
  end
end
