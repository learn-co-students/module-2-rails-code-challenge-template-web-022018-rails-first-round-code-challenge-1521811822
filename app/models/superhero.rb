class Superhero < ApplicationRecord
  belongs_to :superpower
  validates :name, uniqueness: true
  validates :name, presence: true
end
