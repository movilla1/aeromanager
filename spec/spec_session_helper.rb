# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
module SpecSessionHelper
  # Creates a JWT token for testing with an user_id
  def self.get_token(user_id)
    ::JWT.encode({ user_id: user_id }, ::ENV['SECURE_TOKEN_PASS'], 'HS256')
  end
end
