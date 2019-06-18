class Hiring < ApplicationRecord
  belongs_to :company
  has_many :searches
  has_many :users, through: :searches
end
