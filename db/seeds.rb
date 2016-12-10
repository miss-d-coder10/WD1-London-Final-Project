# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "DaraDC",
  email: "dara.dc10@gmail.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root,"db/images/avatar6.jpg")),
  bio: "Wine explorer"
},{
  username: "willcook",
  email: "will.cook@ga.co",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/avatar3.jpg")),
  bio: "Wine getaway addict"
}])

#site members

u1 = User.create!({
  username: "nataliePateman",
  email: "natalie.pateman@gmail.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/avatar_default.png")),
  bio: "I love all wines"
})
u2 = User.create!({
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/avatar_default.png")),
  bio: "I love fine wine"
})
u3 = User.create!({
  username: "CarolineWilson",
  email: "caroline.wilson@gmail.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/avatar4.png")),
  bio: "Just love wines!"
})
u3 = User.create!({
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/avatar5.jpg")),
  bio: "Rock and roll with wine!"
})


#vineyard owners
paul = User.create!({
  username: "paul.langham",
  email: "ab@abecketts.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/abecketts_logo.png")),
  bio: "Proud Owner of A'Becketts Vineyard."
})

denbies = User.create!({
  username: "denbies",
  email: "denbies.wine@denbies.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root,"db/images/denbies_logo.jpg")),
  bio: "You will be at home with us."
})

rathfinnyestate = User.create!({
  username: "markdriver",
  email: "mark.driver@rathfinnyestate.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/rathfinny_logo.jpg")),
  bio: "Home away from home."
})


Vineyard.create!([{
  vineyard_name: "a’Beckett’s Vineyard",
  email: "http://www.abecketts.co.uk/contact/",
  website_url: "http://www.abecketts.co.uk/",
  phone: "01380816669",
  address: "High Street, Littleton Panell",
  city: "Devizes",
  region: "Wiltshire",
  postcode: "SN10 4EN",
  country: "United Kingdom",
  specialty: "Pinot Noir",
  description: "We are family own vineyard situated halfway between Avebury and Stonehenge and is where we make award winning English Sparkling and Still Wines along with Cider and Apple Juice from our orchards.",
  pet_friendly: false,
  holiday: false,
  tours: true,
  events: false,
  family_friendly: true,
  cover_image: File.open(File.join(Rails.root, "db/images/abecketts_coverimage.jpg")),
  image_one: File.open(File.join(Rails.root, "db/images/abecketts_one.jpg")),
  image_two: File.open(File.join(Rails.root, "db/images/abecketts_2.jpg")),
  image_three: File.open(File.join(Rails.root, "db/images/abecketts_3.jpg")),
  image_four: File.open(File.join(Rails.root, "db/images/abecketts_4.jpg")),
  user: paul
},{
  vineyard_name: "Denbies Wine Estate",
  email: "customerservices@denbiesvineyard.co.uk",
  website_url: "http://www.denbies.co.uk/",
  phone: "01306 876616 (ext. 0)",
  address: "London Road",
  city: "Dorking",
  region: "Surrey",
  postcode: "RH5 6AA",
  country: "United Kingdom",
  specialty: "Finest sparkling and all table wines",
  description: "The Denbies Estate, based in Dorking, Surrey, has been family owned and run since 1984. Denbies vineyard was planted in 1986, and since then has become one of the largest wine producers in the UK. Denbies core business is agriculture and we are pleased to be able to offer visitors an insight into wine production in the UK. Denbies wine now competes on an international level, including multiple gold awards for sparkling wine production, the first ever gold for an English rose wine and most recently an international gold for Denbies Noble Harvest Dessert wine. We are honoured over the years to have welcomed several members of the Royal family to the estate, completing the historical connections which date back to Prince Albert in 1851. The Surrey Hills is a beautiful area to live in and while you are visiting do take advantage of the surrounding areas, including 7 miles of public footpath which trail throughout the vineyard.",
  pet_friendly: false,
  holiday: true,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image: File.open(File.join(Rails.root, "db/images/denbies_cover1.jpg")),
  image_one: File.open(File.join(Rails.root, "db/images/denbies4.jpg")),
  image_two: File.open(File.join(Rails.root, "db/images/denbies_1.jpg")),
  image_three: File.open(File.join(Rails.root, "db/images/denbies_2.jpg")),
  image_four: File.open(File.join(Rails.root, "db/images/denbies_3.jpg")),
  user: denbies
  },{
  vineyard_name: "Rathfinny Wine Estate",
  email: "customerservices@denbiesvineyard.co.uk",
  website_url: "http://rathfinnyestate.com/",
  phone: "01323 871031",
  address: "White Way, Polegate",
  city: "Alfriston",
  region: "East Sussex",
  postcode: "BN26 5TU",
  country: "United Kingdom",
  specialty: "Sussex Sparkling Wine",
  description: "We established the Rathfinny Wine Estate in 2010 near Alfriston in the South Downs of Sussex, one of England’s exceptional natural landscapes, with the express intention of producing some of the world’s best sparkling wine. Whether it is by tasting our wines or by visiting our Estate, we want you to really experience Rathfinny and our commitment to creating exceptional Sussex Sparkling wine from this beautiful and iconic part of southern England",
  pet_friendly: true,
  holiday: true,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image: File.open(File.join(Rails.root, "db/images/rathfinny_cover1_edited.jpg")),
  image_one: File.open(File.join(Rails.root, "db/images/rathfinny1.jpg")),
  image_two: File.open(File.join(Rails.root, "db/images/rathfinny2.jpg")),
  image_three: File.open(File.join(Rails.root, "db/images/rathfinny3.jpg")),
  image_four: File.open(File.join(Rails.root, "db/images/rathfinny4.jpg")),
  user: rathfinnyestate
}
])
