class User < ApplicationRecord
  validates :username , presence: true , length: {maximum: 15, minimum: 3},uniqueness: { case_sensitive: false }
  has_secure_password

end
