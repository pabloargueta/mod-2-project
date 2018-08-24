
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
Payment.destroy_all

got = HomeownersAssociation.create(name: "Game of Thrones Hood")
wwh = HomeownersAssociation.create(name: "Westworld Heights")


dues = Category.create(name: "Monthly Dues")
fees= Category.create(name: "Late Fees")
interest = Category.create(name: "Interest")


# Admin Users

got_admin = User.create({
  first_name: "Pablo",
  last_name: "Stephens",
  street: "880 Main Street",
  city: "Houston",
  state: "TX",
  zip: "77001",
  email: "admin@got.com",
  homeowners_association: got,
  account_balance: 0.00,
  password: "password",
  is_admin: true
})

ww_admin = User.create({
  first_name: "Stephen",
  last_name: "Little",
  street: "880 Main Street",
  city: "Houston",
  state: "TX",
  zip: "77001",
  email: "admin@ww.com",
  homeowners_association: wwh,
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

# WestWorld Users

dolores = User.create(first_name: "Dolores", last_name: "Abernathy", street: "100 Carnarvon Drive", city: "Houston", state: "TX", zip: "77024", email: "d.tabernathy@gmail.com", homeowners_association: wwh, account_balance: 0.00, password: "password", is_admin: false)

elsie = User.create(first_name: "Elsie", last_name: "Hughes", street: "526 W Friar Tuck Lane", city: "Houston", state: "TX", zip: "77024", email: "e.hughes@gmail.com", homeowners_association: wwh, account_balance: 0.00, password: "password", is_admin: false)

robert = User.create(first_name: "Robert", last_name: "Ford", street: "100 Carnarvon Drive", city: "Houston", state: "TX", zip: "77024", email: "r.ford@gmail.com", homeowners_association: wwh, account_balance: 0.00, password: "password", is_admin: false)

bernard = User.create(first_name: "Bernard", last_name: "Lowe", street: "705 Kuhlman Road", city: "Houston", state: "TX", zip: "77024", email: "b.lowe@gmail.com", homeowners_association: wwh, account_balance: 0.00, password: "password", is_admin: false)

william = User.create(first_name: "William", last_name: "Black", street: "711 Marchmont Drive", city: "Houston", state: "TX", zip: "77024", email: "w.black@gmail.com", homeowners_association: wwh, account_balance: 0.00, password: "password", is_admin: false)

logan = User.create(first_name: "Logan", last_name: "Delos", street: "8 Winston Woods Drive", city: "Houston", state: "TX", zip: "77024", email: "l.delos@gmail.com", homeowners_association: wwh, account_balance: 0.00, password: "password", is_admin: false)

maeve = User.create(first_name: "Maeve", last_name: "Millay", street: "25 Greyton Lane", city: "Houston", state: "TX", zip: "77024", email: "m.millay@gmail.com", homeowners_association: wwh, account_balance: 0.00, password: "password", is_admin: false)


# Game of Thrones Profile Picture Links
got_admin.attach_image('https://avatars3.githubusercontent.com/u/29463210?s=460&v=4')
ww_admin.attach_image('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png')
daenerys.attach_image('http://assets.viewers-guide.hbo.com/larges3-ep1-people-profilepic-targaryen-daenerys-800x800.jpg')
jon.attach_image('https://i.stack.imgur.com/6Zr5C.jpg')
rob.attach_image('https://pbs.twimg.com/profile_images/473391556276142080/BHC-ZgfF_400x400.jpeg')
cersei.attach_image('https://pbs.twimg.com/profile_images/892764427509874692/NQHTt6N8_400x400.jpg')
tyrion.attach_image('https://pbs.twimg.com/profile_images/668279339838935040/8sUE9d4C_400x400.jpg')
arya.attach_image('https://media1.tenor.com/images/ce4a32b4858c78c64d1b66d64494ccdf/tenor.gif')
hodor.attach_image('http://assets.viewers-guide.hbo.com/larges3-ep1-people-profilepic-hodor-800x800.jpg')

# West World Profile Picture Links
dolores.attach_image('https://assets3.thrillist.com/v1/image/1819274/size/tl-horizontal_main.jpg')
elsie.attach_image('https://pm1.narvii.com/6310/6eb47cb37a96ce526ea624ae105ac72d03cbc25b_hq.jpg')
bernard.attach_image('https://amp.thisisinsider.com/images/582b2cd6341d7ae3018b4931-960-720.png')
robert.attach_image('https://s1.r29static.com//bin/entry/455/1775,0,3000,3600/720x864,80/1685026/image.jpg')
william.attach_image('https://amp.thisisinsider.com/images/58495fcf65edfe1a008b5159-960-720.jpg')
logan.attach_image('https://vignette.wikia.nocookie.net/westworld/images/5/5c/Logan_Delos_Reunion.jpg/revision/latest/scale-to-width-down/310?cb=20180509174633')
maeve.attach_image('https://imagesvc.timeincapp.com/v3/fan/image?url=https%3A%2F%2Fbeyondwestworld.com%2Ffiles%2F2016%2F12%2Fwestworld-trompe-loeil-thandie-newton.jpg&c=sc&w=850&h=560')

## Random Invoice Data

(User.all.count * 10).times {

  date_range = 180
  due_amount = rand(500.00)
  fee_amount = rand(50.00)
  interest_amount = rand(5.00)

  Invoice.create_invoice(user: User.all[[rand(User.all.count)-1,1].max], total_due: due_amount, created_at: Time.now - rand(86400*date_range), description: "This is a seed charge", is_paid: false, total_outstanding: due_amount, category: dues)

  Invoice.create_invoice(user: User.all[[rand(User.all.count)-1,1].max], total_due: fee_amount, created_at: Time.now - rand(86400*date_range), description: "This is a seed charge", is_paid: false, total_outstanding: fee_amount, category: fees)

  Invoice.create_invoice(user: User.all[[rand(User.all.count)-1,1].max], total_due: interest_amount, created_at: Time.now - rand(86400*date_range), description: "This is a seed charge", is_paid: false, total_outstanding: interest_amount, category: interest)
}
## Random Payment Data

(User.all.count * 26).times {

  unpaid_invoices = Invoice.all.select {|invoice| !invoice.is_paid}
  paid_invoice = unpaid_invoices[rand(unpaid_invoices.length-1)]
  paid_date = [paid_invoice.created_at + rand(86400 * 100), Time.now].min
  paid_amount = rand(0.1..1.1) * paid_invoice.total_due

  Payment.create_payment(invoice: paid_invoice, created_at: paid_date, payment_amount: paid_amount)
}
