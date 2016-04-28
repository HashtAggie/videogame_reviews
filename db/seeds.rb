# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
print "Seeding standard categories"

Category.create( [
  {name: "PC Games"}
  {name: "Xbox Games"}
  {name: "Nintendo Games"}
  {name: "Playstation Games"}
  ])

  puts "seeded #{Category.count} categories"
