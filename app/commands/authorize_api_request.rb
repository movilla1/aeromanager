# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class AuthorizeApiRequest
  prepend ::SimpleCommand

  def initialize(headers = {})
    @headers = headers
  end

  def call
    user
  end

  private

  attr_reader :headers

  def user
    if decoded_auth_token
      @user = ::AeromanagerModels::User.find_by(id: decoded_auth_token.first['user_id'])
    end
    @user
  end

  def decoded_auth_token
    @decoded_auth_token = ::JWT.decode(http_auth_header, ::ENV['SECURE_TOKEN_PASS'], false)
  rescue JWT::DecodeError => e
    @decoded_auth_token = nil
  end

  def http_auth_header
    return headers['Authorization'].split.last if headers['Authorization'].present?

    nil
  end
end
