class User < ApplicationRecord
  has_secure_password

  has_many :designs, foreign_key: :user_id

  validates_presence_of :email, :password_digest, :username
end
