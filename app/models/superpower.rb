class Superpower < ApplicationRecord
  has_many :superheros


# SEARCH STUFF ======================
  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

end
