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
Invoice.destroy_all

got = HomeownersAssociation.create(name: "Game of Thrones Hood")
bbh = HomeownersAssociation.create(name: "Breaking Bad Heights")


dues = Category.create(name: "Monthly Dues")
fees= Category.create(name: "Late Fees")
interest = Category.create(name: "Interest")

User.create({
  first_name: "Pablo",
  last_name: "Stephens",
  street: "880 Main Street",
  city: "Houston",
  state: "TX",
  zip: "77001",
  email: "test@test.com",
  homeowners_association: got,
  account_balance: 0.00,
  password: "admin123",
  is_admin: true
})

User.create({
  first_name: "testfirst",
  last_name: "testlast",
  street: "111 Main Street",
  city: "Houston",
  state: "TX",
  zip: "77002",
  email: "testuser@test.com",
  homeowners_association: got,
  account_balance: 0.00,
  password: "user123",
  is_admin: false
})

4.times {

  User.create(first_name: Faker::GameOfThrones.character.split(' ')[0], last_name: Faker::GameOfThrones.character.split(' ')[1..-1].join(' '), street: Faker::Address.street_name, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, email: Faker::Internet.email, homeowners_association: got, account_balance: 0.00, password: "password", is_admin: false)

  User.create(first_name: Faker::BreakingBad.character.split(' ')[0], last_name: Faker::BreakingBad.character.split(' ')[1..-1].join(' '), street: Faker::Address.street_name, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, email: Faker::Internet.email, homeowners_association: bbh, account_balance: 0.00, password: "password", is_admin: false)
}

10.times {
  
  due_amount = rand(500.00)
  fee_amount = rand(50.00)
  interest_amount = rand(5.00)
  
  due_invoice = Invoice.create(user: User.all[rand(9)+1], total_due: due_amount, date_created: Time.now, description: "This is a seed charge", is_paid: false, total_outstanding: due_amount, category: dues)
  
  Invoice.create(user: User.all[rand(9)+1], total_due: fee_amount, date_created: Time.now, description: "This is a seed charge", is_paid: false, total_outstanding: fee_amount, category: fees)
    
  Invoice.create(user: User.all[rand(9)+1], total_due: interest_amount, date_created: Time.now, description: "This is a seed charge", is_paid: false, total_outstanding: interest_amount, category: interest)
}
