# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


HomeownersAssociation.destroy_all
Category.destroy_all
User.destroy_all

got = HomeownersAssociation.create(name: "Game of Thrones Hood")
bbh = HomeownersAssociation.create(name: "Breaking Bad Heights")


Category.create(name: "Monthly Dues")
Category.create(name: "Late Fees")
Category.create(name: "Interest")

5.times {
  
  User.create(first_name: Faker::GameOfThrones.character.split(' ')[0], last_name: Faker::GameOfThrones.character.split(' ')[1..-1].join(' '), street: Faker::Address.street_name, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, email: Faker::Internet.email, homeowners_association: got, account_balance: 0.00, password: "password")
  
  User.create(first_name: Faker::BreakingBad.character.split(' ')[0], last_name: Faker::BreakingBad.character.split(' ')[1..-1].join(' '), street: Faker::Address.street_name, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, email: Faker::Internet.email, homeowners_association: bbh, account_balance: 0.00, password: "password")
}

