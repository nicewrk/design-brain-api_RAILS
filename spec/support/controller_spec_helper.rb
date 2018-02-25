module ControllerSpecHelper
  def expired_token_generator(user_id)
    JsonWebToken.encode({ user_id: user_id }, (Time.now.to_i - 10))
  end

  def token_generator(user_id)
    JsonWebToken.encode(user_id: user_id)
  end

  def invalid_headers
    {
      "Authorizaion" => nil,
      "Content-Type" => "application/json"
    }
  end
  
  def valid_headers
    {
      "Authorizaion" => token_generator(user.id),
      "Content-Type" => "application/json"
    }
  end
end
