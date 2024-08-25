class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      token = user.generate_jwt
      render json: { token: token }, status: :created
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end
end
