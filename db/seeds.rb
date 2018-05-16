# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '07453646759',
    category:     'chinese',
  },

    {
    name:         'dfdafa',
    address:      'Cambridge',
    phone_number: '00000000000',
    category:     'italian',
  },

    {
    name:         'dfad',
    address:      'Madrid',
    phone_number: '11111111111',
    category:     'french',
  },

    {
    name:         'agafg',
    address:      'Paris',
    phone_number: '2222222222',
    category:     'chinese',
  },

    {
    name:         'fsgf',
    address:      'London',
    phone_number: '333333333',
    category:     'chinese',
  },
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
