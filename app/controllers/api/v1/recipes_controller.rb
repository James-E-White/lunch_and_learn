class Api::V1::RecipesController < ApplicationController
  def index
    # if params[:country]
     render json: RecipesSerializer.new(RecipesFacade.get_recipes(params[:country]))
    # else 
    # #  country = Countr
  end
end