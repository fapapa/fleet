class Warehouse < ApplicationRecord
  validates :name, :address, :city, presence: true
end
