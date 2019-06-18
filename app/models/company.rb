class Company < ApplicationRecord
  has_many :hirings
  has_many :searches, through: :hirings
end
