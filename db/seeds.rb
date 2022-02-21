# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
DatabaseCleaner.clean_with(:truncation) #permet de cleaner la base pour remplacer les destroy

users = []
puts "Users incrementation"
10.times do |x|
  user = User.create(name: Faker::Name.first_name, email: Faker::Internet.safe_email)
  users << user
end