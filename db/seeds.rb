# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.find_or_create_by(name: 'ION Orchard') do |store|
  store.opening_time = "9.30am"
  store.closing_time = "10.30pm"
  store.latitude = 40.714728
  store.longitude = -73.998672
end

Store.find_or_create_by(name: 'Great World City') do |store|
  store.opening_time = "10am"
  store.closing_time = "10pm"
  store.latitude = -47.41234
  store.longitude = 50.68409
end

Store.find_or_create_by(name: 'Ngee Ann City') do |store|
  store.opening_time = "9.45am"
  store.closing_time = "10.15pm"
  store.latitude = -54.47216
  store.longitude = 110.10900
end