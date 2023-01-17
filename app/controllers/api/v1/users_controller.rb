class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
     render json: UserSerializer.new(user), status: 200
    else
      render json: { :errors => "Name is blank or email is already in use", status: 400 }
    end
  end

  private

  def user_params
    params.permit(:name, :email)
  end
end