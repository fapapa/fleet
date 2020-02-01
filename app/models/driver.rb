class Driver < ApplicationRecord
  belongs_to :status
  has_one :driver_license

  validates :status, presence: true
end
