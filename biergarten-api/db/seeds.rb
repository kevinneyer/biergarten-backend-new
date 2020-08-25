# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beer.destroy_all
User.destroy_all
Favorite.destroy_all
Review.destroy_all

bud = Beer.create(url: 'https://www.budweiser.com', name: 'Budweiser', brewery: 'AB InBev', img_url: 'https://delpapadistributing.com/wp-content/uploads/2018/09/budweiser_pair_02.png', style: 'Lager', abv: 5.0 , description: 'Medium bodied, flavorful, crisp lager brewed with the best barley malt and blend of premium hop varieties.', tasting_notes: 'Crisp taste with a smooth finish. ', likes: 10 , recommended_drinking: 'Perfect for all year drinking, grilling, and baseball games.')
high = Beer.create(url: 'https://www.millerhighlife.com', name: 'Miller High Life', brewery: 'Miller Brewing Co', img_url: 'https://dydza6t6xitx6.cloudfront.net/ci-miller-high-life-1c0b560ccca972a0.jpeg', style: 'Lager', abv: 4.6 , description: 'True to its original recipe, it’s brewed with a proprietary blend of malted barley, Galena hops from the Pacific Northwest, and Miller yeast.', tasting_notes: 'Crisp, refreshing, and effervescent ', likes: 3 , recommended_drinking: 'BBQs, divebars, and summertime drinking.')
pbr = Beer.create(url: 'https://pabstblueribbon.com', name: 'Pabst Blue Ribbon', brewery: 'Pabst Brewing Company', img_url: 'https://pabstblueribbon.com/files/pbr-org_1-768x922.png', style: 'Lager', abv: 4.8, description: 'A smooth, full bodied beer with a clean, crisp finish with a fine noble hop aroma.', tasting_notes: 'Grain, corn', likes: 14 , recommended_drinking: 'Always good for all the time.')
tire = Beer.create(url: 'https://www.newbelgium.com', name: 'Fat Tire', brewery: 'New Belgium', img_url: 'https://products1.imgix.drizly.com/ci-new-belgium-fat-tire-b4e1817093500c47.jpeg?auto=format%2Ccompress&fm=jpg&q=20', style: 'Amber Ale', abv: 5.2, description: 'Easy drinking amber ale with a medium body and light, sweet finish.', tasting_notes: 'Toasty malt, gentle sweetness, and a flash of fresh hop bitterness', likes: 9, recommended_drinking: 'Camping and outdoor activities')
voodoo = Beer.create(url: 'https://www.newbelgium.com', name: 'VooDoo Ranger', brewery: 'New Belgium', img_url: 'https://www.newbelgium.com/globalassets/beer/voodoo-ranger/vripa_2019_globe_btl.png', style: 'IPA', abv: 7.0 , description: 'Bursting with tropical aromas and juicy fruit flavors from Mosaic and Amarillo hops, this golden IPA is perfectly bitter with a refreshing, sublime finish.', tasting_notes: 'Lightly sweet at first with a stronger, building and perfect bitterness.', likes: 11, recommended_drinking: 'Grilling, outdoor activities')
hearted = Beer.create(url: 'http://www.bellsbeer.com', name: 'Two Hearted Ale', brewery: 'Bells Brewery', img_url: 'https://cdn.shopify.com/s/files/1/0227/0581/products/Bells-Two-Hearted-Ale-12OZ-CAN_620x.JPG?v=1587397438', style: 'IPA', abv: 7.0, description: 'Bursting with hop aromas ranging from pine to grapefruit from massive hop additions in both the kettle and the fermenter.', tasting_notes: 'Bitter Citrus Pine', likes: 7 , recommended_drinking: 'Remarkably drinkable and well suited for adventures everywhere.')
pale = Beer.create(url: 'https://sierranevada.com', name: 'Pale Ale', brewery: 'Sierra Nevada', img_url: 'https://products1.imgix.drizly.com/ci-sierra-nevada-pale-ale-972a185439d2f351.jpeg?auto=format%2Ccompress&fm=jpg&q=20', style: 'Ale', abv: 5.6, description: 'Heavy on hops, with intense aromas of pine and citrus.', tasting_notes: 'Fragrant bouquet and spicy flavor', likes: 20, recommended_drinking: 'Enjoy outdoors, grilling, bbq, hiking, camping')
ruin = Beer.create(url: 'https://tworoadsbrewing.com', name: 'Road 2 Ruin', brewery: 'Two Roads', img_url: 'https://www.totalwine.com/dynamic/490x/media/sys_master/twmmedia/h2b/h3d/11348859191326.png', style: 'Double IPA', abv: 8.0, description: 'Big, hoppy IPA with plenty of bite!', tasting_notes: 'Pine, citrus, and floral', likes: 10, recommended_drinking: 'Cooler weather, stronger profiles, having a good time.')
city = Beer.create(url: 'https://4handsbrewery.com', name: 'City Wide', brewery: '4 Hands Brewing Co', img_url: 'https://s3.amazonaws.com/liftclient-offloading/4hands/wp-content/uploads/2019/04/CityWide.png', style: 'Pale Ale', abv: 5.5, description: 'An American pale ale that showcases a blend of Centennial, Citra and Simcoe hops', tasting_notes: 'Aromas of citrus, melon and tropical fruit tapering to a crisp, juicy finish', likes: 14, recommended_drinking: 'Summer, grilling, Imos')
sip = Beer.create(url: 'https://www.lawsonsfinest.com', name: 'Sip of Sunshine', brewery: 'Lawsons Finest Liquids', img_url: 'https://cdn.shopify.com/s/files/1/0058/8854/0731/products/sip-of-sunshine-ipa-161728_1024x1024@2x.jpg?v=1595530054', style: 'IPA', abv: 8.0, description: 'Lupulin-laden India Pale brewed in Stratford, CT.', tasting_notes: 'Juicy tropical fruit character, bright floral aromas and delectable layers of hop flavor', likes: 18, recommended_drinking: 'Pour mindfully, inhale deeply and enjoy a tropical vacation in a glass')
toasted = Beer.create(url: 'https://www.bluepointbrewing.com/home', name: 'Toasted Lager', brewery: 'Blue Point Brewing Company ', img_url: 'https://www.bluepointbrewing.com/assets/images/beers/year-round/toasted-lager/toasted-lager-can.png', style: 'Lager', abv: 5.5, description: 'Named for the “toasted” characteristics of the original direct-fire brick kettle, this flagship brew is brewed with a blend of six specialty malts for a rich flavor.', tasting_notes: 'Balanced malt and hops with a smooth finish.', likes: 11, recommended_drinking: 'fall, pizza, on a boat.')
ipa = Beer.create(url: 'https://lagunitas.com', name: 'IPA', brewery: 'Lagunitas Brewing Company', img_url: 'https://dydza6t6xitx6.cloudfront.net/ci-lagunitas-ipa-ea3c01b7b5a23bd8.png', style: 'IPA', abv: 6.2, description: 'A well-rounded, highly drinkable IPA', tasting_notes: 'A bit of Caramel Malt barley provides the richness that mellows out the twang of the hops.', likes: 19, recommended_drinking: 'mussels, summer, beach')
boston = Beer.create(url: 'https://www.samueladams.com', name: 'Boston Lager', brewery: 'Sam Adams', img_url: 'https://i0.wp.com/www.delmesaliquor.com/wp-content/uploads/2020/05/Sam-Adams-Lager.jpeg?fit=696%2C743&ssl=1', style: 'Lager', abv: 5.0, description: 'Helped lead the American beer revolution, reviving a passion for full-flavored brews.', tasting_notes: 'A distinctive balance of spicy hops, slightly sweet roasted malts, and a smooth finish.', likes: 15, recommended_drinking: 'marathons, all year')
guinness = Beer.create(url: 'https://www.guinness.com/en-us', name: 'Guinness', brewery: 'Guinness and Co', img_url: 'https://assets.bizjournals.com/boston/news/0317-Guinness-courtesy-Diageo.jpg?v=3', style: 'Stout', abv: 4.2, description: 'Rich and creamy. Distinctively black. This iconic beer is unmistakeable.', tasting_notes: 'Bitter sweet with notes of malt and roast. Rich, creamy, and velvety smooth.', likes: 10, recommended_drinking: 'St.Patricks Day, in Ireland, winter')
prima = Beer.create(url: 'https://victorybeer.com', name: 'Prima Pils', brewery: 'Victory Brewing Co', img_url: 'https://dydza6t6xitx6.cloudfront.net/ci-victory-prima-pils-53e84a166ec6bb50.png', style: 'Pilsner', abv: 5.3, description: 'This is truly brilliant beer, bringing nuanced complexity together with smooth, easy drinking.', tasting_notes: 'A crisp yet distinct Pilsner brewed with German hops that bring vivid notes of floral and spice with citrus and lemon.', likes: 4, recommended_drinking: 'year round, beach, grilling, easy drinking')
resin = Beer.create(url: 'https://sixpoint.com', name: 'Resin', brewery: 'Sixpoint Brewery', img_url: 'https://sixpoint.com/wp-content/uploads/2012/02/resin_can.jpg', style: 'Double IPA', abv: 9.1, description: 'Key Ingredients, Chinook and Centennial Hops, are a little old school, with tons of resin and pine notes. Resin uses a ton of different hops, for a massively complex hop bouquet.', tasting_notes: 'Hop candy up front, but drinks super clean for the size of the beer.', likes: 17, recommended_drinking: 'looking for something strong, bold taste, cooler weather.')
jammer = Beer.create(url: 'https://sixpoint.com', name: 'Jammer', brewery: 'Sixpoint Brewery', img_url: 'https://sixpoint.com/wp-content/uploads/2019/04/sixpoint-site-jammer.png', style: 'Gose', abv: 4.0, description: 'Tart enough to tingle the tastebuds, but not so sour that you can’t throw back a few.', tasting_notes: 'A refreshing, tart brew balanced with a fruity coriander aroma and a touch of sea salt.', likes: 9, recommended_drinking: 'summer, beach, day drinking, slamming')
watermelon = Beer.create(url: 'https://montaukbrewingco.com/pages/home', name: 'Watermelon Session Ale', brewery: 'Montauk Brewing Company', img_url: 'https://products1.imgix.drizly.com/ci-montauk-watermelon-session-ale-10693946b59344d5.png?auto=format%2Ccompress&fm=jpg&q=20', style: 'Ale', abv: 4.9, description: 'This highly refreshing brew combines delicious watermelon flavors with a crisp Session Ale that is perfect for sipping under the summer sun.', tasting_notes: 'Watermelon', likes: 11, recommended_drinking: 'seasonal, summer, beach, sun')
gose = Beer.create(url: 'https://westbrookbrewing.com', name: 'Gose', brewery: 'Westbrook Brewing Co', img_url: 'https://dydza6t6xitx6.cloudfront.net/ci-westbrook-gose-c19431796be957eb.jpeg', style: 'Gose', abv: 4.0, description: 'Tart wheat beer with a touch of sea salt.', tasting_notes: 'Coriander, sea salt, sour - delicious.', likes: 22, recommended_drinking: 'summer, beach, slamming')
galaxy = Beer.create(url: 'https://otherhalfbrewing.com', name: 'All Galaxy Everything', brewery: 'Other Half Brewing', img_url: 'https://craftpeak-cooler-images.imgix.net/other-half-brewing/All-Galaxy-Everything.png?auto=compress%2Cformat&fit=scale&h=1024&ixlib=php-1.2.1&w=1024&wpsize=large', style: 'Imperial IPA', abv: 8.5, description: 'Single hop style IPA.', tasting_notes: 'Pungent passion fruit forward Galaxy hops.', likes: 8, recommended_drinking: 'slow sipping, higher ABV')
sippin = Beer.create(url: 'https://www.odellbrewing.com', name: 'Sippin Pretty', brewery: 'Odell Brewing Co', img_url: 'https://www.odellbrewing.com/wp-content/uploads/2020/05/Sippin-Pretty-Hero.png', style: 'Fruited Sour', abv: 4.5, description: 'Loaded with a unique blend of açai, guava, and elderberry, and balanced with a delicate addition of Himalayan pink sea salt, this beer pops with a bright ruby color and a refreshing tart finish.', tasting_notes: 'Acai, guava, and elderberry.', likes: 4, recommended_drinking: 'seasonal, summer, beach, slamming')
coors = Beer.create(url: 'https://www.coors.com', name: 'Coors Banquet', brewery: 'Coors Brewing Company', img_url: 'https://products2.imgix.drizly.com/ci-coors-banquet-2377c317e74b4b3c.jpeg?auto=format%2Ccompress&fm=jpg&q=20', style: 'Lager', abv: 5.0, description: 'Coors Banquet is brewed with 100% Rocky Mountain water and Moravian barley from many generations of family farmers', tasting_notes: 'The subtle blend of Chinook, Hallertau, Herkules and Taurus hops gives Coors Banquet just the perfect hint of bitterness to offset the malty sweetness', likes: 15, recommended_drinking: 'all year, slamming, outdoors')
goose = Beer.create(url: 'https://www.gooseisland.com', name: '312', brewery: 'Goose Island', img_url: 'https://products2.imgix.drizly.com/ci-goose-island-312-urban-wheat-ale-14beb4546d433a46.jpeg?auto=format%2Ccompress&fm=jpg&q=20', style: 'Wheat Ale', abv: 4.2, description: 'A crisp, fruity ale flavor delivered in a smooth, creamy body that is immensely refreshing.', tasting_notes: 'Lemon, spicy aroma', likes: 10, recommended_drinking: 'all year, beach, get-togethers')
uno = Beer.create(url: 'https://www.flyingdog.com', name: 'Numero Uno', brewery: 'Flying Dog Brewery', img_url: 'https://lh3.googleusercontent.com/yKjw7-elFFA-E22U4m4-iWBxNSF0zfmu0eeJ3VGc4K2m2c3rfRZA55Xtn2xG3r6UsVJ_Hvu2JUknPEYtk7SHcePaRGaRAQ=s750', style: 'Mexican Lager', abv: 4.9, description: 'Refreshing lager that brings bold, bright lime zest flavor and a crisp, clean finish', tasting_notes: 'lime and agave', likes: 9, recommended_drinking: 'beach, summer, hot weather, Cinco de Mayo')
seaquench = Beer.create(url: 'https://www.dogfish.com/front', name: 'SeaQuench Ale', brewery: 'Dogfish Head Craft Brewery ', img_url: 'https://cdn.shopify.com/s/files/1/0227/0581/products/Dogfish-Head-SeaQuench-Sour-Ale-12OZ-CAN_417f509f-9ac7-4ec7-b0b8-c9f26be40cb5_620x.png?v=1531727454', style: 'Sour', abv: 4.9, description: 'Amazingly tart, refreshingly crsip.', tasting_notes: 'Flavors of lime and the deeper slight bitter of black lime, a touch of salt on the tongue, and a bit of malt sweetness in the finish.', likes: 13, recommended_drinking: 'summer, beach, slammning, get-togethers')
white = Beer.create(url: 'https://www.allagash.com/', name: 'White', brewery: 'Allagash', img_url: 'https://www.allagash.com/wp-content/uploads/White-2.19.20.png', style: 'Belgian Style Wheat', abv: 5.2, description: 'Allagash White features a refreshing balance of citrus and spice in this hazy Belgian-style wheat beer.', tasting_notes: 'Coriander and Curaçao orange peel.', likes: 21, recommended_drinking: 'easy drinking, summer, beach, Maine.')
allday = Beer.create(url: 'https://foundersbrewing.com', name: 'All Day IPA', brewery: 'Founders', img_url: 'https://dydza6t6xitx6.cloudfront.net/ci-founders-all-day-ipa-f3e4b9d140c8abe0.png', style: 'IPA', abv: 4.7, description: 'Naturally brewed with a complex array of malts, grains and hops. Balanced for optimal aromatics and a clean finish.', tasting_notes: 'hop, orange, tangerine, pine.', likes: 20, recommended_drinking: 'all day, all year, get-togethers')
robots = Beer.create(url: 'https://www.radiantpigbeers.com', name: 'Save the Robots', brewery: 'Radiant Pig', img_url: 'https://dydza6t6xitx6.cloudfront.net/ci-radiant-pig-save-the-robots-east-coast-ipa-e3fff96edbd8f4c1.png', style: 'IPA', abv: 7.0, description: 'Big IPA that drinks easy', tasting_notes: 'This hazy, unfiltered gem has juicy, tropical, flavors that span the hop multiverse.', likes: 10, recommended_drinking: 'slamming IPAs, all year, bold flavor.')
patch = Beer.create(url: 'https://mikkeller.com', name: 'Sour Patch Suds', brewery: 'Mikkeller Brewing', img_url: 'https://dydza6t6xitx6.cloudfront.net/ci-mikkeller-nyc-sour-pitch-suds-b25d978cc6c3f3d7.jpeg', style: 'Sour IPA', abv: 7.0, description: 'Punch-style Sour IPA', tasting_notes: 'Cherry, pomegranate, key lime, pineapple, tangerine, passion fruit, lemon zest.', likes: 18, recommended_drinking: 'feeling funky, summer, something new, interesting')
spotted = Beer.create(url: 'https://newglarusbrewing.com', name: 'Spotted Cow', brewery: 'New Glarus Brewing Co', img_url: 'https://i5.walmartimages.com/asr/047577b3-3384-4250-9218-e6b985448a0b_1.965650c07f41f76ad565b8a47492d9e7.jpeg?odnWidth=612&odnHeight=612&odnBg=ffffff', style: 'Naturally Cloudy Farmhouse Ale', abv: 4.8, description: 'Naturally cloudy, the yeast is allowed to remain in the bottle to enhance fullness of flavors.', tasting_notes: 'Fun, Fruity and Satisfying', likes: 20, recommended_drinking: 'feeling funky, Wisconsin, all year')
blvd = Beer.create(url: 'https://www.boulevard.com/', name: 'Unfiltered Wheat', brewery: 'Boulevard Brewing Co', img_url: 'https://images.ctfassets.net/qe08557i7rmu/5d5OntyFfayQOKmOkkCucm/fd6317ba405ec7dcfa08333f5e1e4180/Boulevard-Unfiltered-Wheat-web.jpg?w=900', style: 'Unfiltered Wheat', abv: 4.4, description: 'Boulevard Unfiltered Wheat Beer is a lively, refreshing ale with a natural citrusy flavor and distinctive cloudy appearance.', tasting_notes: 'Wheat and Lemon', likes: 30, recommended_drinking: 'all year, refreshing, summer, bbq')
labatt = Beer.create(url: 'https://www.labattusa.com', name: 'Labatt Blue', brewery: 'Labatt', img_url: 'https://dydza6t6xitx6.cloudfront.net/ci-labatt-blue-166b3625536163c9.png', style: 'Canadian Pilsner', abv: 5.0, description: 'Labatt Blue has a clean refreshing taste with distinct hop aroma.', tasting_notes: 'Delicate fruit flavor and a slightly sweet aftertaste.', likes: 24, recommended_drinking: 'slamming, all year, Canada, drinkable.')
topper = Beer.create(url: 'https://alchemistbeer.com/', name: 'Heady Topper', brewery: 'Alchemist Beer', img_url: 'https://www.mensjournal.com/wp-content/uploads/mj-618_348_hunting-for-heady-topper-america-s-most-coveted-beer.jpg?quality=86&strip=all', style: 'Double IPA', abv: 8.0, description: 'The mythical and legendary. Unfiltered complex web of genious you should drink straight from the can.', tasting_notes: 'Citrus', likes: 30, recommended_drinking: 'Special ocassions, in Vermont, feeling brave.')


beerlover = User.create(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRTz5daD1dfCq_VctX5Rwck4UTVSTb6LyY_uKKvGkU6bMW52MrsIqjAljK-mfWQIcolAhyg8JmP6G-EU2lA1BgE1g&usqp=CAU&ec=45690270', username: 'beerlover', email:'beer@beer.com', password: '123')
johnman = User.create(image: 'https://icons-for-free.com/iconfiles/png/512/boy+character+man+user+icon-1320085976934394387.png', username: 'johnman', email:'hello@hello.com', password: '321')
beer4ever = User.create(image: 'https://i.pinimg.com/originals/a7/0e/16/a70e1675c7bc001f1578aa76bb0a7819.png', username: 'beer4ever', email:'beer4ever@beer.com', password: 'abc')
obama = User.create(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS1Hw9rFaaOwYT-Xh5aYslbuG-GUKzeHvCxHVklq1q51TgMwEDWz1P1Byzv_g4B9pGTooA--r8oVEWzZmaA2bOPZA&usqp=CAU&ec=45690270', username: 'bobama', email:'obama@pres.com', password: 'obama')
buschman = User.create(image: 'https://i.dlpng.com/static/png/6633330_preview.png', username: 'buschman', email:'buschman@busch.com', password: '54321')

Review.create(content: 'Really loved it!', rating: 4, user_id: buschman.id, beer_id: bud.id)
Review.create(content: 'Only okay.', rating: 2, user_id: johnman.id, beer_id: uno.id)
Review.create(content: 'Great american lager', rating: 5, user_id: obama.id, beer_id: bud.id)
Review.create(content: 'Amazing IPA', rating: 5, user_id: buschman.id, beer_id: resin.id)
Review.create(content: 'Not that great. Too dark', rating: 1, user_id: beer4ever.id, beer_id: guinness.id)

Favorite.create(user_id: obama.id, beer_id: bud.id)
Favorite.create(user_id: buschman.id, beer_id: bud.id )
Favorite.create(user_id: obama.id, beer_id: guinness.id)
Favorite.create(user_id: johnman.id, beer_id: coors.id)
Favorite.create(user_id: buschman, beer_id: robots.id)