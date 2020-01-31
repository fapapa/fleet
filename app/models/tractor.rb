class Tractor < ApplicationRecord
  validates :vin, :make, :year, presence: true
end
