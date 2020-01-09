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
7. All animals are equal.", user: napoleon, category: politics)

earth_guide = Post.create(title: "Guide to the Galaxy Entry 1 - Earth", content: "
Harmless.

UPDATE:
Mostly Harmless.", user: ford, category: galaxy_guide)

alcohol_guide = Post.create(title: "Guide to the Galaxy Entry 2 - Alcohol", content: "
Here's what the Encyclopedia Galactica has to say about alcohol.
It says that alcohol is a colorless volatile liquid formed by the fermentation of sugars and also notes its intoxicating effect on certain carbon-based life forms.

The best drink in existence is the Pan Galactic Gargle Blaster. The effect of drinking one is like having your brains smashed out by a slice of lemon wrapped round a large gold brick.
It was invented by Zaphod Beeblebrox.", user: ford, category: galaxy_guide)

Post.all.each do |post|
  post.date = DateTime.now
  post.save
end

# Categories
#
# survival.posts = [bear_guide, parachute_guide]
#
# politics.posts << farm_guide
#
# galaxy_guide.posts = [earth_guide, alcohol_guide]
#
# category_array = [survival, politics, galaxy_guide]

# Comments

comment1 = Comment.create(content: "i like fire trucks and moster trucks", user: walter, post: earth_guide)
comment2 = Comment.create(content: "walter", user: walter, post: earth_guide)
# earth_guide.comments = [comment1, comment2]
# walter.comments = [comment1, comment2]

comment3 = Comment.create(content: "Four legs good, two legs bad.", user: napoleon, post: bear_guide)
# comment3.post = bear_guide
comment4 = Comment.create(content: "The only good human being is a dead one.", user: napoleon, post: parachute_guide)
# comment4.post = parachute_guide
# napoleon.comments = [comment3, comment4]

comment5 = Comment.create(content: "I didn't know my bear guide was actually on to something", user: austin, post: alcohol_guide)
# comment5.post = alcohol_guide
# austin.comments << comment5

comment6 = Comment.create(content: "You should be careful of your rat buddies", user: ford, post: farm_guide)
# comment6.post = farm_guide
# ford.comments << comment6

# comment_array = [comment1, comment2, comment3, comment4, comment5, comment6]

# Tags

# tag_guide = Tag.new(name: "Guide")
# tag_guide.posts = Post.all

tag_event_planning = Tag.create(name: "Event Planning")
tag_revolution = Tag.create(name: "Revolution")
farm_guide.tags = [tag_event_planning, tag_revolution]
farm_guide.save

# tag_travel = Tag.new(name: "Travel")
# galaxy_guide.posts.each { |post| post.tags << tag_travel }

tag_economics = Tag.new(name: "Economics")
tag_economics.posts = [bear_guide, farm_guide]
tag_economics.save

# tag_array = [tag_event_planning, tag_revolution, tag_economics]
#
# post_array.each { |post| post.save }
# user_array.each { |user| user.save }
# category_array.each { |category| category.save }
# tag_array.each { |tag| tag.save }
# comment_array.each { |comment| comment.save }
#
