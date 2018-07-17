class ApplicationController < ActionController::API
  def secret_key
    ENV['SECRET_KEY']
  end

  def authorization_token
    request.headers["Authorization"]
  end

  def decoded_token
    begin
      JWT.decode authorization_token(), secret_key(), true, { algorithm: 'HS256' }
    rescue JWT::VerificationError, JWT::DecodeError
      nil
    end
  end

  def valid_token?
    !!decoded_token
  end

  def requires_login
    if !valid_token?
      render json: {
        message: 'You are unauthorized.'
      }, status: :unauthorized
    end
  end

  def payload(name, id)
    { name: name, id: id }
  end

  def get_token(payload)
    JWT.encode payload, secret_key(), 'HS256'
  end

end
