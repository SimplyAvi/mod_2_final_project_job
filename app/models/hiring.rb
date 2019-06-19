class Hiring < ApplicationRecord
  belongs_to :company
  has_many :searches
  has_many :users, through: :searches

  def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("job_title LIKE ?", "%#{search}%")
  end

end
