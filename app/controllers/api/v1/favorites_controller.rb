class Api::V1::FavoritesController < ApplicationController
    before_action :find_user
  def index
    user = User.find_by_api_key(params[:api_key])
    if user.nil?
      render json: { error: 'User not found, api key is invalid'}, status: 404
    else
      render json: FavoriteSerializer.new(user.favorites)
    end
  end

   def create
    new_favorite = @user.favorites.new(favorite_params)
    if new_favorite.save 
      render json: { 'success': 'Favorite added successfully' }, status: :created
    else
      render json: { 'error': 'Missing data' }, status: 400
    end
   end

  private
  def find_user
    @user = User.find_by(api_key: params[:api_key])
   if @user.nil?
     return render json: { 'error': 'Error user not found' }, status: 400
   end
  end

  def favorite_params
    params.permit(:api_key, :country, :recipe_link, :recipe_title)
  end
end

