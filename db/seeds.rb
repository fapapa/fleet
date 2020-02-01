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
