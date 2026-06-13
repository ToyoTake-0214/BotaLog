class User < ApplicationRecord
  has_secure_password

  validates :user_name, presence: true,  length: {maximum: 100}
  validates :email,  length: {maximum: 100}
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:password_digest] }

end
