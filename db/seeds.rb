# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

NAMES = %w(bobby laura adele andrea john)
SPECIES = %w(dog cat seal hamster)

5.times do
  puts "Creating a pet..."
  Pet.create name: NAMES.sample, species: SPECIES.sample, found_on: Date.today - 5
end