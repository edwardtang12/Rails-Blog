# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.delete_all
Post.delete_all
User.delete_all
Tag.delete_all
Category.delete_all
TaggedPost.delete_all

# Users

austin = User.create(first_name: "Gregory", last_name: "Austin McConnell", email: "academyleaderstudio@gmail.com")
napoleon = User.create(first_name: "Comrade", last_name: "Napoleon", email: "leadernapoleon@gmail.com")
ford = User.create(first_name: "Ford", last_name: "Prefect", email: "adthtarv@zarniwoop.net")
walter = User.create(first_name: "Walter", last_name: "Clements", email: "walterclements@gmail.com")

# Categories

survival = Category.create(name: "Survival")
politics = Category.create(name: "Politics")
galaxy_guide = Category.create(name: "The Hitchhiker's Guide to the Galaxy")

# Posts

bear_guide = Post.create(title: "How to Survive a Bear Attack", content: "
1) Determine the type of bear
2) Commit to the fight
   Resist the urge to run
   Avoid climbing trees
3) Get big and make noise
4) Engage self-defence countermeasures
5) Engage the bear in a game of wits
6) Discover the bear's deepest, darkest secret
7) Travel to the bear's home planet
8) Help rescue the bear's family from the enslavement of the Kuzvoxian Nanites
9) Use your prestige to become a planet-wide celebrity
10) Run for political office
11) Blackmail the bear
12) Introduce honey to the bear's home planet
13) Collapse the economy
14) Topple the bear's established government
15) Return to Earth

And just like that, in 15 simple steps, you've survived!", user: austin, category: survival)

parachute_guide = Post.create(title: "What to Do if your Parachute Fails", content: "Pray", user: austin, category: survival)

farm_guide = Post.create(title: "How to Rectify your Farm Society", content: "
Simply follow these seven commandments, along with your comrades on the farm:
1. Whatever goes upon two legs is an enemy.
2. Whatever goes upon four legs, or has wings, is a friend.
3. No animal shall wear clothes.
4. No animal shall sleep in a bed.
5. No animal shall drink alcohol.
6. No animal shall kill any other animal.
7. All animals are equal.

Before you know it, society will be yours.", user: napoleon, category: politics)

earth_guide = Post.create(title: "Guide to the Galaxy Entry 1 - Earth", content: "
Harmless.

UPDATE:
Mostly Harmless.", user: ford, category: galaxy_guide)

alcohol_guide = Post.create(title: "Guide to the Galaxy Entry 2 - Alcohol", content: "
Here's what the Encyclopedia Galactica has to say about alcohol.
It says that alcohol is a colorless volatile liquid formed by the fermentation of sugars and also notes its intoxicating effect on certain carbon-based life forms.

The best drink in existence is the Pan Galactic Gargle Blaster. The effect of drinking one is like having your brains smashed out by a slice of lemon wrapped round a large gold brick.
It was invented by Zaphod Beeblebrox.", user: ford, category: galaxy_guide)

hipsum1 = Post.create(title: "Hipsum 1", content: "
Lorem ipsum dolor amet brooklyn brunch squid jean shorts. Hexagon jianbing portland hella. Bitters af put a bird on it adaptogen gluten-free. Migas activated charcoal pour-over, health goth poke +1 tilde la croix literally.

Microdosing gluten-free blog farm-to-table. Master cleanse pinterest wolf, tilde austin asymmetrical bespoke. Chambray ramps you probably haven't heard of them semiotics, twee pok pok humblebrag brooklyn woke fixie vexillologist man bun fingerstache tousled banh mi. Craft beer etsy photo booth, truffaut vexillologist vinyl la croix adaptogen raw denim gochujang readymade aesthetic. Gastropub woke ramps portland, snackwave echo park lumbersexual. Viral godard meh organic gluten-free chillwave, actually gastropub umami pabst unicorn.

Irony asymmetrical humblebrag portland, enamel pin pitchfork woke. Bespoke put a bird on it photo booth cliche. Blue bottle shabby chic mlkshk synth kogi 90's venmo waistcoat. Yuccie distillery crucifix disrupt, VHS biodiesel quinoa truffaut.

Hammock selvage bushwick cornhole subway tile +1 VHS affogato green juice whatever. Subway tile hella wayfarers brooklyn photo booth, activated charcoal occupy man braid. Scenester affogato tumblr narwhal, vexillologist tofu irony biodiesel swag schlitz gochujang freegan tumeric. DIY iPhone etsy edison bulb bitters keytar af heirloom pork belly pickled artisan ugh four loko. Deep v messenger bag taiyaki thundercats direct trade master cleanse pickled vape waistcoat.

Fanny pack neutra activated charcoal tattooed tofu wolf offal tacos pickled hot chicken. Asymmetrical taiyaki banh mi, tofu affogato austin bushwick before they sold out twee. Deep v ennui man bun cloud bread taxidermy, tote bag normcore drinking vinegar slow-carb pitchfork. Lyft typewriter gentrify four dollar toast synth.", user: napoleon, category: survival)

hipsum2 = Post.create(title: "Hipsum 2", content: "
Lorem ipsum dolor amet heirloom woke banh mi, microdosing aesthetic wolf man braid 90's cold-pressed. Asymmetrical tumblr selvage, hammock humblebrag gentrify fashion axe tote bag squid palo santo cloud bread. XOXO raclette seitan schlitz. Tumeric vaporware stumptown portland selvage la croix lyft.

Raw denim vegan pour-over kitsch irony artisan tbh semiotics keffiyeh migas occupy cloud bread brooklyn slow-carb flexitarian. Tilde man bun mlkshk williamsburg plaid tumeric sriracha. Mlkshk cray godard hot chicken lyft photo booth. Letterpress hell of four dollar toast lyft next level echo park biodiesel hella ennui kickstarter cred 3 wolf moon. Leggings live-edge flannel taiyaki chillwave adaptogen prism.

Street art blog lomo hexagon kickstarter. Banjo farm-to-table try-hard humblebrag succulents. Next level pinterest iceland, tacos truffaut meggings chicharrones godard actually keytar health goth. Roof party portland bespoke, vegan taxidermy tofu typewriter.

Chillwave lo-fi chicharrones, leggings meditation everyday carry blue bottle pug dreamcatcher tote bag sartorial prism iPhone. You probably haven't heard of them drinking vinegar church-key, normcore pour-over messenger bag tattooed chartreuse yr banjo keytar letterpress. Mustache typewriter kitsch selvage. Tumeric farm-to-table bitters knausgaard wayfarers. Organic cold-pressed shabby chic, flannel readymade bespoke wolf vape tattooed sartorial distillery.

Godard selvage messenger bag, marfa man bun meggings single-origin coffee flexitarian asymmetrical unicorn air plant butcher. Letterpress flexitarian tofu man braid quinoa gastropub drinking vinegar cronut gluten-free green juice distillery selvage skateboard tbh. Stumptown helvetica echo park, you probably haven't heard of them live-edge before they sold out selfies vape. Locavore portland hell of, selvage hexagon meh neutra gochujang tousled 90's meditation. Celiac bitters tbh VHS slow-carb, photo booth gluten-free yr pop-up helvetica PBR&B. Small batch fam microdosing man braid normcore cardigan edison bulb.
", user: napoleon, category: survival)


hipsum3 = Post.create(title: "Hipsum 3", content: "
Lorem ipsum dolor amet vaporware seitan tumeric, bushwick taiyaki kinfolk tacos paleo keytar forage health goth subway tile pork belly taxidermy. Pok pok schlitz tofu chambray ethical listicle farm-to-table gochujang palo santo umami tousled. Hexagon tumeric jean shorts, palo santo salvia craft beer church-key master cleanse farm-to-table enamel pin +1 kogi readymade plaid ethical. Brunch pork belly 8-bit, cronut chambray lo-fi portland blog you probably haven't heard of them pour-over sriracha. Jianbing mumblecore bitters, cray pok pok venmo chambray vinyl kickstarter.

Seitan hella meditation scenester. Fingerstache craft beer vice, ugh sartorial disrupt cornhole air plant humblebrag fashion axe prism taiyaki taxidermy put a bird on it. Prism lyft enamel pin, 90's art party banh mi cred meh taxidermy wolf lumbersexual pinterest. Ethical direct trade tbh 8-bit iceland adaptogen semiotics, subway tile PBR&B banjo heirloom fingerstache gastropub selfies.

Biodiesel venmo cred asymmetrical vaporware distillery chillwave pug. Celiac dreamcatcher banjo four loko unicorn semiotics williamsburg adaptogen. Adaptogen tattooed prism coloring book kale chips cornhole pabst put a bird on it art party +1. Chambray slow-carb intelligentsia put a bird on it la croix, yuccie tilde distillery fam neutra plaid lumbersexual chicharrones. Plaid bespoke VHS kombucha typewriter blog.

Kitsch franzen enamel pin forage leggings edison bulb microdosing. Blog tacos salvia cardigan ramps. Everyday carry air plant plaid disrupt. Bicycle rights everyday carry pug authentic pitchfork venmo lo-fi literally hashtag occupy tilde plaid four dollar toast sartorial kale chips. Tofu lo-fi blue bottle vice, yr kale chips occupy meggings shabby chic gluten-free neutra disrupt chartreuse tousled. Chambray ramps VHS, affogato sriracha tbh single-origin coffee four dollar toast tumeric tote bag glossier next level vexillologist. Normcore authentic distillery shoreditch, iceland activated charcoal letterpress chambray organic readymade.

Helvetica neutra trust fund tilde bitters gentrify, schlitz raclette af vice plaid deep v authentic chartreuse. Enamel pin tumeric gochujang synth direct trade echo park. Iceland swag ramps artisan brunch salvia coloring book art party 3 wolf moon tumblr. Four loko selfies shaman sustainable. Tumeric swag slow-carb bitters. Jean shorts DIY marfa man bun, lo-fi fanny pack microdosing meggings church-key squid yuccie poutine enamel pin single-origin coffee.", user: walter, category: survival)

Post.all.each do |post|
  post.date = DateTime.now
  post.save
end

# Comments

comment1 = Comment.create(content: "i like fire trucks and moster trucks", user: walter, post: earth_guide)
comment2 = Comment.create(content: "walter", user: walter, post: earth_guide)
comment3 = Comment.create(content: "Four legs good, two legs bad.", user: napoleon, post: bear_guide)
comment4 = Comment.create(content: "The only good human being is a dead one.", user: napoleon, post: parachute_guide)
comment5 = Comment.create(content: "I didn't know the planet in my bear guide actually existed", user: austin, post: alcohol_guide)
comment6 = Comment.create(content: "You should be careful of your rat buddies", user: ford, post: farm_guide)
comment7 = Comment.create(content: "Disgusting.", user: napoleon, post: alcohol_guide)

# Tags

tag_guide = Tag.new(name: "Guide")
tag_guide.posts = Post.all
tag_guide.save

tag_event_planning = Tag.create(name: "Event Planning")
tag_revolution = Tag.create(name: "Revolution")
farm_guide.tags = [tag_event_planning, tag_revolution]
farm_guide.save

tag_travel = Tag.new(name: "Travel")
galaxy_guide.posts.each do |post|
  post.tags << tag_travel
  post.save
end

tag_economics = Tag.new(name: "Economics")
tag_economics.posts = [bear_guide, farm_guide]
tag_economics.save
