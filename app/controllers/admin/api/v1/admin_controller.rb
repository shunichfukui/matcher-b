class Admin::Api::V1::AdminController < ApplicationController
  before_action :authorize_admin

  def check_admin
    head :ok
  end

  private

  def authorize_admin
    render json: { errors: 'Forbidden' }, status: :forbidden unless current_user&.admin?
  end
end
