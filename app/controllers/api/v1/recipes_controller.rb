class Api::V1::RecipesController < ApplicationController
  def index
    render json: RecipesSerializer.new(RecipesFacade.get_recipes(params[:country]))
  end
end