class Superpower < ApplicationRecord
  has_many :superheroes
  validates :name, uniqueness: true
  validates :name, presence: true
end
