class Driver < ApplicationRecord
  belongs_to :status
  has_one :driver_license
  has_many :trips

  validates :status, presence: true
end
