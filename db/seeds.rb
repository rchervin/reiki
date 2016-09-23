# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

meditation = Therapy.create(
  name: 'Basic Meditation',
  description: 'This is a basic meditation class. It incoporates practices of this this and that.',
  image_url: 'header.jpg'
  )