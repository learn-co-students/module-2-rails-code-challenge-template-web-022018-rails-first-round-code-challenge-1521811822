class Superhero < ApplicationRecord

validates :super_name, :name, :superpower_id, presence: true
validates :super_name, uniqueness: true
belongs_to :superpower

end
