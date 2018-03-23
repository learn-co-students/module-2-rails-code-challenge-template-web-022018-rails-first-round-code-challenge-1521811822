class Superhero < ApplicationRecord
  validates :super_name, uniqueness: true
  belongs_to :superpower
end
