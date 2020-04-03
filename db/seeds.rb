# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

counter = 0

names = []

while counter < 10
  name = Faker::Movies::HarryPotter.character
  if !names.include?(name)
    names << name
    counter += 1
  end
end

names.each do |name|
  Character.create(name: name, quote: Faker::Movies::HarryPotter.quote, house: Faker::Movies::HarryPotter.house, location: Faker::Movies::HarryPotter.location)
end