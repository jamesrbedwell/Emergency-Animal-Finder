# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
campfire = Incident.create(name: 'Camp Fire', category: fire)
bushfire = Incident.create(name: 'Bush Fire', category: fire)
forestfire = Incident.create(name: 'Forest Fire', category: fire)
desertfire = Incident.create(name: 'Desert Fire', category: fire)
campFire = Incident.create(name: 'Camp Fire', category: fire)