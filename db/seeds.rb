# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movi1es.first)
# User.destroy_all
# 10.times do
#   User.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, age: Faker::Number.number(2))
# end
Drink.destroy_all
require 'csv'
require 'pry'
csv_text = File.read('/Users/adamsaland/Developer/flatiron/mod_two/r_o_rails/virtual_bar/db/all_drinks.csv')
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  Drink.create!(drink_name: row["drink_name"], user_id: (1..10).to_a.sample)
end
