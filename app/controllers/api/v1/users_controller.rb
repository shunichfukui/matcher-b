class Api::V1::UsersController < ApplicationController

  def show
    user = User.find_by(email: params[:email])
    if user
      render json: { user: user }, status: 200
    else
      render json: { error: 'User not found' }, status: 404
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      token = user.generate_jwt
      render json: { token: token }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
