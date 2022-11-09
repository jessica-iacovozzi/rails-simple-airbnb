# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Clearing All Flats...'
Flat.destroy_all
puts 'Clean Database'
puts 'Creating 5 flats...'

5.times do
  flat = Flat.create!(
    name: Faker::App.name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: rand(70..300),
    number_of_guests: rand(1..12),
    rating: rand(1..5)
  )
  puts "Flat number #{flat.id} created!"
end

puts 'All done!'
