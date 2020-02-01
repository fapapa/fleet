class DriverLicense < ApplicationRecord
  belongs_to :driver

  validates :number, :expiry_date, presence: true
end
