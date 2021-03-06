class User < ApplicationRecord
  has_secure_password
  has_many :searches
  has_many :hirings, through: :searches
end
