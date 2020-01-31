class Driver < ApplicationRecord
  belongs_to :status

  validates :status, presence: true
end
