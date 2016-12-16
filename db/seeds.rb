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
  profile_image: File.open(File.join(Rails.root, "db/images/avatar_dog.jpg")),
  bio: "I love all wines"
})
u2 = User.create!({
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/avatar_baby.jpeg")),
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

chapeldownaccount = User.create!({
  username: "chapel_down",
  email: "info@chapeldown.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/chapeldown_logo.jpg")),
  bio: "Proud British Wine Maker"
})

ridgeviewuser = User.create!({
  username: "ridgeview",
  email: "tamara@ridgeview.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/ridgeway_logo.gif")),
  bio: "Proud British Wine Maker"
})

biddendenaccount = User.create!({
  username: "biddenden",
  email: "info@biddenden.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/biddenden_logo.jpg")),
  bio: "Enjoy and peace and quiet with little wine love from us!"
})

holmfirthaccount = User.create!({
  username: "holmfirth",
  email: "contact@holmfirth.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/holmfirth_logo.jpg")),
  bio: "Enjoy and peace and quiet with little wine love from us!"
})

hushheathUser = User.create!({
  username: "hushheath",
  email: "info@hushheath.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/hushheath_logo.jpg")),
  bio: "If you want the best wine, then look no further."
})

alburyVineyard = User.create!({
  username: "alburyVineyard",
  email: "lucy@alburyvineyard.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/albury_logo.jpg")),
  bio: "Feel our personalised and warm hospitality on your visit!"
})

tinwoodwine = User.create!({
  username: "Tinwood",
  email: "info@tinwoodestate.com",
  password: "password",
  password_confirmation: "password",
  profile_image: File.open(File.join(Rails.root, "db/images/tinwood_logo.png")),
  bio: "If you want to have a time of your life, then Tinwood is for you."
})




# ###################################################################


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
  image_three:  "/images/camelvalley_image3.jpg",
  image_four:  "/images/camelvalley_image4.jpeg",
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
  image_three:  "/images/threechoir_image3.jpg",
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
  cover_image:  "/images/wykens_coverimage2.jpg",
  image_one:  "/images/wyken_image1.jpg",
  image_two:  "/images/wyken_image2.jpg",
  image_three:  "/images/wyken_image3.jpg",
  image_four:  "/images/wyken_image4.jpg",
  user: wykenOwner
})

chapeldown = Vineyard.create!({
  vineyard_name: "Chapel Down",
  email: "sales@chapeldown.com",
  website_url: "https://www.chapeldown.com",
  phone: "01580 763033",
  address: "Tenterden Vineyard, Small Hythe Rd",
  city: "Tenterden",
  region: "Kent",
  postcode: "TN30 7NG",
  country: "United Kingdom",
  specialty: "Pinot Noir, Chardonnay, Pinot Blanc and Bacchus. Chapel Down also produces beers and ciders",
  description: "Chapel Down produces a world-class range of sparkling and still wines, together with the award-winning range of Curious beers & cider.  Our sparkling wines are created using the Traditional Method, the same as Champagne, from fruit sourced from the South-East of England. Located in Tenterden, in the heart of the Kent countryside, the Chapel Down winery is open to the public throughout the year and welcomes over 50,000 visitors each year.  Chapel Down offers guided tours of the winery and vineyards, together with tutored tastings and gift experiences.  The winery boasts excellent visitor facilities, including an impressive restaurant and shop stocking local produce.",
  pet_friendly: true,
  holiday: false,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image:  "/images/chapeldown_coverimage.jpg",
  image_one:  "/images/chapeldown_image1.jpg",
  image_two:  "/images/chapeldown_image2.jpg",
  image_three:  "/images/chapeldown_image3.jpg",
  image_four:  "/images/chapeldown_image4.jpg",
  user: chapeldownaccount
})

ridgeview = Vineyard.create!({
  vineyard_name: "Ridgeview Wine Estate",
  email: "info@ridgeview.co.uk",
  website_url: "http://www.ridgeview.co.uk",
  phone: "01580 291726",
  address: "Fragbarrow Lane",
  city: "Ditchling Common",
  region: "Sussex ",
  postcode: "BN6 8TP",
  country: "United Kingdom",
  specialty: "Chardonnay",
  description: "Ridgeview is a family company, established in 1994 in the South Downs of Sussex in England, producing sparkling wine from traditional Champagne varieties and methods. Ridgeview have been awarded over 200 medals and 27 Trophies including English Wine of the Year four times and IWSC Best sparkling wine twice. In 2010 Ridgeview caught global attention when they received the trophy for the best sparkling wine in the Decanter World Wine Awards, the first time this has ever been awarded to a producer outside Champagne.",
  pet_friendly: false,
  holiday: false,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image:  "/images/ridgeway_coverimage.jpg",
  image_one:  "/images/ridgeway_image1.jpg",
  image_two:  "/images/ridgeway_image2.jpg",
  image_three:  "/images/ridgeway_image3.jpg",
  image_four:  "/images/ridgeway_image4.jpg",
  user: ridgeviewuser
})

biddenden = Vineyard.create!({
  vineyard_name: "Biddenden Vineyards",
  email: "info@biddendenvineyards.co.uk",
  website_url: "http://biddendenvineyards.com",
  phone: "01444 242040 ",
  address: " Little Whatmans Gribble Bridge Lane",
  city: "Biddenden, Ashford",
  region: "Kent",
  postcode: "TN27 8DF",
  country: "United Kingdom",
  specialty: "All wines, Sparkling White and Rose, and Cider and Apply Juice",
  description: "Here at Biddenden Vineyards, Kent’s original commercial vineyard, we pride ourselves on being a family run vineyard with the second and third generation of the Barnes family managing the estate. First planted by the Barnes family in 1969, Biddenden is the oldest commerical vineyard in Kent. There are now 23 acres of south-facing slopes, situated in a shallow sheltered valley.",
  pet_friendly: false,
  holiday: false,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image:  "/images/biddenden_coverimage.jpg",
  image_one:  "/images/biddenden_image1.jpg",
  image_two:  "/images/biddenden_image2.jpg",
  image_three:  "/images/biddenden_image3.jpg",
  image_four:  "/images/biddenden_image4.jpg",
  user: biddendenaccount
})

holmfirth = Vineyard.create!({
  vineyard_name: "Holmfirth Vineyard",
  email: "contact@holmfirthvineyard.com",
  website_url: "http://www.holmfirthvineyard.com/",
  phone: "01484 691861",
  address: "Woodhouse Lane, Holmbridge",
  city: "Holmfirth",
  region: "West Yorkshire",
  postcode: "HD9 2QR",
  country: "United Kingdom",
  specialty: "English Wines",
  description: "Holmfirth Vineyard has been producing quality award winning English Wine since 2009 and we are constantly striving to create the best wine we can. Holmfirth vineyard has its own purpose built winery on site where we process from grape to bottle, developing our own unique English Wine.",
  pet_friendly: false,
  holiday: true,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image:  "/images/holmfirth_coverpage.jpeg",
  image_one:  "/images/holmfirth_image1.jpg",
  image_two:  "/images/holmfirth_image2.jpg",
  image_three:  "/images/holmfirth_image3.jpg",
  image_four:  "/images/holmfirth_images4.jpg",
  user: holmfirthaccount
})

hushheath = Vineyard.create!({
  vineyard_name: "Hush Heath Estate and Winery",
  email: "info@hushheath.com",
  website_url: "http://hushheath.com",
  phone: "01622 832794",
  address: "Five Oak Lane Junction of Snoad Lane",
  city: "Staplehurst",
  region: "Kent",
  postcode: "TN12 0HT",
  country: "United Kingdom",
  specialty: "Balfour Brut. We also have make ciders, apple juice, Pinot Noir and Chardonnay",
  description: "At Hush Heath Estate, we believe strongly in the mantra that the finest wines can only be produced from the finest fruit. Winemaking, therefore, starts in the vineyards. Nestled among the rolling hills, within The Garden of England, our vineyards enjoy quiet serenity and a favourable microclimate supporting optimal ripening conditions for our prized grapes. In our wines and ciders, we use only fruit grown within Hush Heath Estate, so we understand the history of each and every bottle. We feel that the best flavours and characters for sparkling wine production come from the three classic Champagne grape varieties; Chardonnay, Pinot Noir, and Pinot Meunier.",
  pet_friendly: false,
  holiday: false,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image:  "/images/hushheath_coverimage1.jpg",
  image_one:  "/images/hushheath_image1.jpg",
  image_two:  "/images/hushheath_image2.jpg",
  image_three:  "/images/hushheath_image3.jpg",
  image_four:  "/images/hushheath_image4.jpg",
  user: hushheathUser
})

albury = Vineyard.create!({
  vineyard_name: "Albury Organic Vineyard",
  email: "info@alburyvineyard.com",
  website_url: "http://www.alburyvineyard.com",
  phone: "07768 863650",
  address: "Shere Road",
  city: "Albury",
  region: "Surrey",
  postcode: "GU5 9BW",
  country: "United Kingdom",
  specialty: "Albury Estate Classic Cuvée and Albury Estate Blanc de Blancs",
  description: "Albury Organic Vineyard is situated on the southern slopes of the North Downs in the beautiful Surrey Hills, just outside Guildford on the A25 towards Dorking. The vines are the traditional Champagne varietals of Chardonnay, Pinot Noir and Pinot Meunier, as well as some Seyval and Pinot Gris. We produce English wine of the highest quality; a still rosé and quality sparkling wines, the first of which was released for sale in May 2015. We are committed to producing organic fruit without the use of chemicals such as herbicides and fungicides. Whilst copper and sulphur are permitted in organic vineyards we minimise their use. We also use compost teas, which improve the biology of the soil and biodynamic preparations. We believe that this approach, encouraging the natural biology of the land, will produce premium fruit and therefore great wine.",
  pet_friendly: true,
  holiday: false,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image:  "/images/albury_coverimage.jpg",
  image_one:  "/images/albury_image1.jpg",
  image_two:  "/images/albury_image2.jpg",
  image_three:  "/images/albury_image3.jpg",
  image_four:  "/images/albury_image4.jpg",
  user: alburyVineyard
})

tinwood = Vineyard.create!({
  vineyard_name: "Tinwood Estate",
  email: "info@tinwoodestate.com",
  website_url: "http://www.tinwoodestate.com",
  phone: "01243 537372",
  address: "Tinwood Farm, Halnaker",
  city: "Chichester",
  region: "West Sussex",
  postcode: "PO18 0NE",
  country: "United Kingdom",
  specialty: "Tinwood's Sparkling Wines",
  description: "Located at the edge of the beautiful South Downs National Park in West Sussex, Tinwood Winery's luscious vineyards and stunning landscapes are the perfect setting for a fun day of wine tasting. Taste Tinwood's sparkling wines in the luxurious and modern tasting room and look out over the magnificent surrounding views as you enjoy your wine. Tinwood's seasoned hosts will show you all that goes into the growing of their grapes, and explain just why they consider their wines to be some of the finest English sparkling wines available.",
  pet_friendly: false,
  holiday: true,
  tours: true,
  events: true,
  family_friendly: true,
  cover_image:  "/images/tinwood_coverimage_edit.jpg",
  image_one:  "/images/tinwood_image1.jpg",
  image_two:  "/images/tinwood_image2.jpg",
  image_three:  "/images/tinwood_image3.jpg",
  image_four:  "/images/tinwood_image4.jpg",
  user: tinwoodwine
})


####################################comments##############################

u1.comments.create!(rating: 4, vineyard: rathfinny, body: "I love wine and to unwind, perfect place to be! Cant wait to explore more wines")
u2.comments.create!(rating: 5, vineyard: rathfinny, body: "I felt at home here! I had a wonderful time. So much drinking!")
u3.comments.create!(rating: 4, vineyard: denbies, body: "My standard has been met! Fine wines everywhere! I love it!")
u4.comments.create!(rating: 3, vineyard: denbies, body: "I forgot everything as I got too drunk with all the wines")
u5.comments.create!(rating: 4, vineyard: denbies, body: "Perfectness in all wines! Perfect experience")
u6.comments.create!(rating: 2, vineyard: becketts, body: "It was quite boring! Not many to do, just drank what they have!")
u1.comments.create!(rating: 5, vineyard: camelValley, body: "I had the time of my life! RELAXING and Bob gave me a wonderful tour!")
u2.comments.create!(rating: 5, vineyard: wykensVineyard, body: "I spent whole weekend of drinking all the finest wines! Incredible experience and just wow!")
u4.comments.create!(rating: 5, vineyard: biddenden, body: "Went away to unwind plus wines = HAPPINESS!.")
u5.comments.create!(rating: 4, vineyard: holmfirth, body: "I had a great time away! Huge land and it has walking trails then drinking!")
u3.comments.create!(rating: 5, vineyard: holmfirth, body: "Everything in one! Great walks, great view, great booze!. Met other wine lovers! It was fun!")
