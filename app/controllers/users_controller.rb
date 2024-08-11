class UsersController < ApplicationController
  def index
    @users = User.all
    render json: Oj.dump(@users, mode: :compat)
  end
end