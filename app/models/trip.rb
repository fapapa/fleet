class Trip < ApplicationRecord
  belongs_to :driver
  belongs_to :tractor
  belongs_to :origin, class_name: 'Warehouse', foreign_key: 'origin_id'
  belongs_to :destination, class_name: 'Warehouse', foreign_key: 'destination_id'

  validates :date, :driver, :tractor, :origin, :destination, presence: true
end
