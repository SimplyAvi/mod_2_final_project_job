class User < ApplicationRecord
  has_many :searches
  has_many :hirings, through: :searches
end
