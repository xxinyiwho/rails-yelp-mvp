# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding..."

Restaurant.destroy_all
5.times do
  restaurants = Restaurant.create({
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: %w(chinese italian japanese belgian french).sample,
    # rating: %w(0 1 2 3 4 5).sample
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  })
end
puts "done"
