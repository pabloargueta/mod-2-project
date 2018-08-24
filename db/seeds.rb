
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


# Admin User

admin = User.create({
  first_name: "Pablo",
  last_name: "Stephens",
  street: "880 Main Street",
  city: "Houston",
  state: "TX",
  zip: "77001",
  email: "admin@admin.com",
  homeowners_association: got,
  account_balance: 0.00,
  password: "password",
  is_admin: true
})

# Game of Thrones Users
daenerys = User.create(first_name: "Daenerys", last_name: "Targaryen", street: "3664 Inverness Dr.", city: "Houston", state: "TX", zip: "77019", email: "d.targaryen@gmail.com", homeowners_association: got, account_balance: 0.00, password: "password", is_admin: false)

jon = User.create(first_name: "Jon", last_name: "Snow", street: "3600 Inverness Dr.", city: "Houston", state: "TX", zip: "77019", email: "j.snow@gmail.com", homeowners_association: got, account_balance: 0.00, password: "password", is_admin: false)

rob = User.create(first_name: "Rob", last_name: "Stark", street: "3601 Inverness Dr.", city: "Houston", state: "TX", zip: "77019", email: "r.stark@gmail.com", homeowners_association: got, account_balance: 0.00, password: "password", is_admin: false)

cersei = User.create(first_name: "Cersei", last_name: "Lannister", street: "3617 Inverness Dr.", city: "Houston", state: "TX", zip: "77019", email: "c.lannister@gmail.com", homeowners_association: got, account_balance: 0.00, password: "password", is_admin: false)

tyrion = User.create(first_name: "Tyrion", last_name: "Lannister", street: "3620 Inverness Dr.", city: "Houston", state: "TX", zip: "77019", email: "t.lannister@gmail.com", homeowners_association: got, account_balance: 0.00, password: "password", is_admin: false)

arya = User.create(first_name: "Arya", last_name: "Stark", street: "3629 Inverness Dr.", city: "Houston", state: "TX", zip: "77019", email: "a.stark@gmail.com", homeowners_association: got, account_balance: 0.00, password: "password", is_admin: false)

hodor = User.create(first_name: "Hodor", last_name: "Wylis", street: "3632 Inverness Dr.", city: "Houston", state: "TX", zip: "77019", email: "h.hodor@gmail.com", homeowners_association: got, account_balance: 0.00, password: "password", is_admin: false)

#
4.times {

  User.create(first_name: Faker::BreakingBad.character.split(' ')[0], last_name: Faker::BreakingBad.character.split(' ')[1..-1].join(' '), street: Faker::Address.street_name, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, email: Faker::Internet.email, homeowners_association: bbh, account_balance: 0.00, password: "password", is_admin: false)
}


# Profile Picture Links
admin.attach_image('https://avatars3.githubusercontent.com/u/29463210?s=460&v=4')
daenerys.attach_image('http://assets.viewers-guide.hbo.com/larges3-ep1-people-profilepic-targaryen-daenerys-800x800.jpg')
jon.attach_image('https://i.stack.imgur.com/6Zr5C.jpg')
rob.attach_image('https://pbs.twimg.com/profile_images/473391556276142080/BHC-ZgfF_400x400.jpeg')
cersei.attach_image('https://pbs.twimg.com/profile_images/892764427509874692/NQHTt6N8_400x400.jpg')
tyrion.attach_image('https://pbs.twimg.com/profile_images/668279339838935040/8sUE9d4C_400x400.jpg')
arya.attach_image('https://media1.tenor.com/images/ce4a32b4858c78c64d1b66d64494ccdf/tenor.gif')
hodor.attach_image('http://assets.viewers-guide.hbo.com/larges3-ep1-people-profilepic-hodor-800x800.jpg')




10.times {

  due_amount = rand(500.00)
  fee_amount = rand(50.00)
  interest_amount = rand(5.00)

  due_invoice = Invoice.create(user: User.all[rand(9)+1], total_due: due_amount, date_created: Time.now, description: "This is a seed charge", is_paid: false, total_outstanding: due_amount, category: dues)

  Invoice.create(user: User.all[rand(9)+1], total_due: fee_amount, date_created: Time.now, description: "This is a seed charge", is_paid: false, total_outstanding: fee_amount, category: fees)

  Invoice.create(user: User.all[rand(9)+1], total_due: interest_amount, date_created: Time.now, description: "This is a seed charge", is_paid: false, total_outstanding: interest_amount, category: interest)
}
