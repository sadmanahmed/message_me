class User < ApplicationRecord

  has_many :messages
  validates :username , presence: true , length: {maximum: 15, minimum: 3},uniqueness: { case_sensitive: false }

  has_secure_password

end
