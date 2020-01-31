class Trip < ApplicationRecord
  belongs_to :driver
  belongs_to :tractor
  belongs_to :origin, class_name: :warehouse
  belongs_to :destination, class_name: :warehouse
end
