# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class AuthenticateUser
  prepend ::SimpleCommand

  # setup the command object with email and pass
  def initialize(email, password)
    @email = email
    @password = password
  end

  # proceed to authenticate and return a hash with the results or nil if failed
  def call
    return unless user.present?

    user_hash = user.attributes.slice('id', 'name', 'email', 'role', 'created_at')
    user_hash["created_at"] = user_hash["created_at"].iso8601

    {
      token: ::JWT.encode({ user_id: user.id }, ::ENV['SECURE_TOKEN_PASS'], 'HS256'),
      user: user_hash
    }
  end

  private

  attr_accessor :email, :password

  def user
    user = ::User.find_by(email: email)
    return user if user&.authenticate(password)

    errors.add(:user_authentication, ::I18n.t('auth.invalid_credentials'))
    nil
  end
end
