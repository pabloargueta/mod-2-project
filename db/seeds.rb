# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

got = HomeownersAssociation.create(name: "Game of Thrones Hood")
bbh = HomeownersAssociation.create(name: "Breaking Bad Heights")


Category.create(name: "Monthly Dues")
Category.create(name: "Late Fees")
Category.create(name: "Interest")

5.times {
  HomeOwner.create(address: Faker::Address.street_address, homeowners_association: got, username: Faker::GameOfThrones.character.downcase.delete(" \t\r\n"))
  HomeOwner.create(address: Faker::Address.street_address, homeowners_association: bbh, username: Faker::BreakingBad.character.downcase.delete(" \t\r\n"))
}

