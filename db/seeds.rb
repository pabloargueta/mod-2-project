# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
HomeownersAssociation.destroy_all
HomeOwner.destroy_all

got = HomeownersAssociation.create(name: "Game of Thrones Hood")
bbh = HomeownersAssociation.create(name: "Breaking Bad Heights")

HomeOwner.create(address: Faker::Address.street_address, homeowners_association: got, username: Faker::GameOfThrones.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: got, username: Faker::GameOfThrones.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: got, username: Faker::GameOfThrones.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: got, username: Faker::GameOfThrones.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: got, username: Faker::GameOfThrones.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: got, username: Faker::GameOfThrones.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: got, username: Faker::GameOfThrones.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: got, username: Faker::GameOfThrones.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: got, username: Faker::GameOfThrones.character.downcase.delete(" \t\r\n"))

HomeOwner.create(address: Faker::Address.street_address, homeowners_association: bbh, username: Faker::BreakingBad.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: bbh, username: Faker::BreakingBad.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: bbh, username: Faker::BreakingBad.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: bbh, username: Faker::BreakingBad.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: bbh, username: Faker::BreakingBad.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: bbh, username: Faker::BreakingBad.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: bbh, username: Faker::BreakingBad.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: bbh, username: Faker::BreakingBad.character.downcase.delete(" \t\r\n"))
HomeOwner.create(address: Faker::Address.street_address, homeowners_association: bbh, username: Faker::BreakingBad.character.downcase.delete(" \t\r\n"))
