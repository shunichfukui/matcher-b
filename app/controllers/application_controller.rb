class ApplicationController < ActionController::API
  before_action :authorize_request

  SECRET_KEY = Rails.application.secrets.secret_key_base.to_s

  private

  def encode_token(payload)
    JWT.encode(payload, SECRET_KEY)
  end

  def decode_token
    auth_header = request.headers['Authorization']
    return nil unless auth_header

    token = auth_header.split(' ').last
    begin
      decoded = JWT.decode(token, SECRET_KEY, true, algorithm: 'HS256')
      decoded.first
    rescue JWT::DecodeError
      nil
    end
  end

  def current_user
    return @current_user if @current_user

    decoded = decode_token
    @current_user = User.find_by(id: decoded['user_id']) if decoded
  end

  def authorize_request
    render json: { errors: 'Unauthorized' }, status: :unauthorized unless current_user
  end
end
