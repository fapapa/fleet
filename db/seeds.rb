# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create the status seeds
active = Status.create(status: 'active')
Status.create(status: 'inactive')
Status.create(status: 'suspended')

# --------------------------------------------------------------------------------
# Seeds to satisfy the tech challenge

# 3 Drivers (all active)
fabio = Driver.create(first_name: "Fabio", last_name: "Papa", status: active)
fabio.driver_license = DriverLicense.create(
  number: "1234567",
  expiry_date: "January 16, 2022"
)
fabio.save
ali = Driver.create(first_name: "Ali", last_name: "Yazdani", status: active)
ali.driver_license = DriverLicense.create(
  number: "7654321",
  expiry_date: "February 20, 2025"
)
ali.save
john = Driver.create(first_name: "John", last_name: "Smith", status: active)
john.driver_license = DriverLicense.create(
  number: "1726354",
  expiry_date: "December 1, 2021"
)
john.save

# 3 Tractors
cat = Tractor.create(
  vin: "1234567890",
  make: "Caterpillar",
  year: 1997,
  last_maintenance_at: "March 12, 2018"
)
bessy = Tractor.create(
  vin: "0987654321",
  make: "Honda",
  year: 2019
)
johnny = Tractor.create(
  vin: "1029384756",
  make: "John Deere",
  year: 2012,
  last_maintenance_at: "December 6, 2019"
)

# 3 Warehouses
aldergrove = Warehouse.create(
  name: "Aldergrove",
  address: "123 Main Street",
  city: "Aldergrove",
  telephone: "(604) 123-4567"
)
langley = Warehouse.create(
  name: "Langley",
  address: "20254 176 Street",
  city: "Langley",
  telephone: "(604) 567-1234"
)
abbotsford = Warehouse.create(
  name: "Abbotsford",
  address: "4032 Willowbrook Ave",
  city: "Abbotsford",
  telephone: "(604) 789-3456"
)

# 3 total trips (driver one has been on 2 trips, driver two has been on 1 trip,
# driver three has no trips yet)
fabio.trips.create(
  date: 2.weeks.ago,
  tractor: cat,
  origin: abbotsford,
  destination: aldergrove
)
fabio.trips.create(
  date: 1.week.ago,
  tractor: bessy,
  origin: langley,
  destination: aldergrove
)
ali.trips.create(
  date: 1.day.ago,
  tractor: johnny,
  origin: aldergrove,
  destination: langley
)
