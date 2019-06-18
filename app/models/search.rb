class Search < ApplicationRecord
  belongs_to :hiring
  belongs_to :user

  def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("title LIKE ?", "%#{search}%")
end
end
