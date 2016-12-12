# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "vineyards", "comments"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

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
u4 = User.create!({
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/avatar5.jpg")),
  bio: "Rock and roll with wine!"
})
u5 = User.create!({
  username: "DaraDC",
  email: "dara.dc10@gmail.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root,"db/images/avatar6.jpg")),
  bio: "Wine explorer"
})
u6 = User.create!({
  username: "willcook",
  email: "will.cook@ga.co",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/avatar3.jpg")),
  bio: "Wine getaway addict"
})
User.create!({
  username: "test",
  email: "test@gmail.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/avatar_default.png")),
  bio: "testing profile"
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

camelValleyOwner = User.create!({
  username: "BobLindo",
  email: "bob.l@camelvalley.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/camelvalley_logo.jpg")),
  bio: "We produce World Class Wines."
})

threeChoirsOwner = User.create!({
  username: "three_choirs_wickham",
  email: "kevin@threechoirs.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/threechoirs_logo.png")),
  bio: "Be prepared to have a great time!"
})

wykenOwner = User.create!({
  username: "wyken_vineyard",
  email: "wyken@wykenvineyards.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/wyken_logo.jpg")),
  bio: "Where you will find the finest English Wine"
})

becketts = Vineyard.create!({
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
  cover_image: "/images/abecketts_coverimage.jpg",
  image_one: "/images/abecketts_one.jpg",
  image_two: "/images/abecketts_2.jpg",
  image_three: "/images/abecketts_3.jpg",
  image_four: "/images/abecketts_4.jpg",
  user: paul
  })

denbies = Vineyard.create!({
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
  cover_image:  "/images/denbies_cover1.jpg",
  image_one:  "/images/denbies4.jpg",
  image_two:  "/images/denbies_1.jpg",
  image_three:  "/images/denbies_2.jpg",
  image_four:  "/images/denbies_3.jpg",
  user: denbies
})

rathfinny = Vineyard.create!({
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
  cover_image:  "/images/rathfinny_cover1_edited.jpg",
  image_one:  "/images/rathfinny1.jpg",
  image_two:  "/images/rathfinny2.jpg",
  image_three:  "/images/rathfinny3.jpg",
  image_four:  "/images/rathfinny4.jpg",
  user: rathfinnyestate
})

camelValley = Vineyard.create!({
  vineyard_name: "Camel Valley Cornwall",
  email: "info@camelvalley.com",
  website_url: "https://www.camelvalley.com",
  phone: "01208 77959",
  address: "Nanstallon",
  city: "Bodmin",
  region: "Cornwall",
  postcode: "PL30 5LG",
  country: "United Kingdom",
  specialty: "Cornwall Brut",
  description: "We are family run,Award winning Camel Valley Vineyard, in Bodmin, Cornwall, produces red, white and sparkling wines. Tours, tastings, and wine by the bottle or glass are available. We believe that the idyllic position on the sunny slopes by the Camel River, along with well-chosen grapes and a strong passion for wine. You can sit out on the terrace overlooking the stunning views and sip glasses of Camel Valley’s own wine, or choose one of the tours: a guided tour, a grand tour and tasting experience. We have two beautiful cottages for your stay and are nestled within the vineyard.",
  pet_friendly: false,
  holiday: true,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image:  "/images/camelvalley_coverimage.jpg",
  image_one:  "/images/camelvalley_image1.jpg",
  image_two:  "/images/camelvalley_image2.jpg",
  image_three:  "/images/camelvalley_.image3jpg",
  image_four:  "/images/camelvalley_image4.jpg",
  user: camelValleyOwner
})

threeChoirs = Vineyard.create!({
  vineyard_name: "Three Choirs Wickham Vineyard",
  email: "info@threechoirs.com",
  website_url: "https://www.three-choirs-vineyards.co.uk",
  phone: "01531 890223",
  address: "Botley Road Shedfield",
  city: "Wickham",
  region: "Hampshire",
  postcode: "SO32 2HL",
  country: "United Kingdom",
  specialty: "Still White, Red and Rosé. Sparkling white",
  description: "With around 80 acres, Three Choirs is one of the larger vineyards in the country. It is also one of the most long-established, being first planted in 1973 (first vintage 1976). Three Choirs continues its innovative wine production, with a number of acres set aside as an experimental vineyard, planting new varieties and monitoring their success. It is from here that a number of new varieties now more widely grown first emerged. Three Choirs lies within a unique microclimate, sheltered by the Malverns and the Brecon Beacons. It has an average rainfall of 20 inches per annum. The temperature controlled winery houses all stainless steel tanks, with warm room for red wines and French and American oak barriques. Winery improvements are paying dividends especially for red wines, but also for their wide range Quality still wines and sparkling white wines, which are their traditional mainstay. Three Choirs makes a lot of still and sparkling wine for nearby vineyards and those farther afield.",
  pet_friendly: false,
  holiday: true,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image:  "/images/threechoirs_coverimage.jpg",
  image_one:  "/images/threechoirs_image5.jpg",
  image_two:  "/images/threechoirs_image2.jpg",
  image_three:  "/images/threechoirs_.image3jpg",
  image_four:  "/images/threechoirs_image4.jpg",
  user: threeChoirsOwner
})

wykensVineyard = Vineyard.create!({
  vineyard_name: "Wyken Vineyard",
  email: "info@threechoirs.com",
  website_url: "http://www.wykenvineyards.co.uk/",
  phone: "01359 250262",
  address: "Wyken Road",
  city: "Bury St Edmunds",
  region: "Suffolk",
  postcode: "IP31 2DW",
  country: "United Kingdom",
  specialty: "Wyken's Bacchus and Moonshine",
  description: "Planted in 1988 on a south facing slope, with some 12,000 vines on seven acres. The vines, trained in the Double Guyot style, thrive on the sandy loam over chalk. On average we produce some 12,000 bottles a year, and these are all sold through our Shop and Restaurant. You are free to walk to the vineyard from the Leaping Hare over our Home Meadow and through a most beautiful ancient woodland. We have a garden topiary, herbs, roses, box, fruit trees -- and meandering peacocks, guinea fowl and chickens -- snuggle up to the Elizabethan manor house, with head-high yew hedges serving as windbreaks, essential in East Anglia, a region renowned for its 'lazy winds'.",
  pet_friendly: true,
  holiday: true,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image:  "/images/wyken_coverimage2.jpg",
  image_one:  "/images/wyken_image1.jpg",
  image_two:  "/images/wyken_image2.jpg",
  image_three:  "/images/wyken_.image3jpg",
  image_four:  "/images/wyken_image4.jpg",
  user: wykenOwner
})

u1.comments.create!(rating: 4, vineyard: rathfinny, body: "I love wine and to unwind, perfect place to be! Cant wait to explore more wines")
u2.comments.create!(rating: 5, vineyard: rathfinny, body: "I felt at home here! I had a wonderful time. So much drinking!")
u3.comments.create!(rating: 4, vineyard: denbies, body: "My standard has been met! Fine wines everywhere! I love it!")
u4.comments.create!(rating: 3, vineyard: denbies, body: "I forgot everything as I got too drunk with all the wines")
u5.comments.create!(rating: 4, vineyard: denbies, body: "Perfectness in all wines! Perfect experience")
u6.comments.create!(rating: 2, vineyard: becketts, body: "It was quite boring! Not many to do, just drank what they have!")
u1.comments.create!(rating: 5, vineyard: camelValley, body: "I had the time of my life! RELAXING and Bob gave me a wonderful tour!")
u2.comments.create!(rating: 5, vineyard: wykensVineyard, body: "I spent whole weekend of drinking all the finest wines! Incredible experience and just wow!")
