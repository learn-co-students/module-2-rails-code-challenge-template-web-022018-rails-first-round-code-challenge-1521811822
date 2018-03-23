class Superpower < ApplicationRecord
  has_many :superheroes
  validates :name, :description, presence: true
end
