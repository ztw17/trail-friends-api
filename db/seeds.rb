# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Trail.destroy_all
User.destroy_all
Friendship.destroy_all
Tag.destroy_all

# Users
user1 = User.create(name: "Zach Weber", username: "ztw", email: "weberzt@email.co", password: BCrypt::Password.create("muirwoods"), location: "Denver, CO")
user2 = User.create(name: "Paul Bramos", username: "pjb", email: "pauljb@email.co", password: BCrypt::Password.create("olympicnational"), location: "Denver, CO")
user3 = User.create(name: "John Doe", username: "johnd", email: "doejohn@email.co", password: BCrypt::Password.create("verysecurepassword"), location: "Portland, OR")
user4 = User.create(name: "Jane Smith", username: "janes", email: "smithjane@email.co", password: BCrypt::Password.create("verysecurepassword"), location: "Seattle, WA")

# Friendships
Friendship.create(user_id: user1.id, friend_id: user2.id)
Friendship.create(user_id: user2.id, friend_id: user1.id)
Friendship.create(user_id: user3.id, friend_id: user4.id)
Friendship.create(user_id: user4.id, friend_id: user3.id)

# Trails
trail1 = Trail.create(name: "Fourth of July Trail", location: "Nederland, CO", description: "Beautiful and rugged trail that accesses Indian Peaks Wilderness and a number of Colorado 12ers and 13ers.", creator_id: user1.id)
trail2 = Trail.create(name: "Willow Lakes Trail", location: "Silverthorne, CO", description: "Take this gorgeous, challenging, and heavily forested trail to Willow Lakes Basin.", creator_id: user1.id)
trail3 = Trail.create(name: "Shadow Canyon Trail", location: "Boulder, CO", description: "Strenuous and rugged trail that gains nearly 3,000 feet of elevation in just a mile and a half, which brings you to South Boulder Peak and Bear Peak.", creator_id: user1.id)
trail4 = Trail.create(name: "Mt. Harvard Trail", location: "Buena Vista, CO", description: "Initially heavily forested, this popular trail opens to the enormous Hornfork Basin, which is the home of Mounts Harvard and Columbia and a number of popular Colorado 13ers.", creator_id: user1.id)

# Tags
tag1 = Tag.create(name: "forested")
tag2 = Tag.create(name: "scrambling")
tag3 = Tag.create(name: "challenging")
tag4 = Tag.create(name: "moderate")
tag5 = Tag.create(name: "water crossings")
tag6 = Tag.create(name: "gorgeous")

# TrailTags
TrailTag.create(trail_id: trail1.id, tag_id: tag1.id)
TrailTag.create(trail_id: trail2.id, tag_id: tag6.id)
TrailTag.create(trail_id: trail3.id, tag_id: tag3.id)
TrailTag.create(trail_id: trail4.id, tag_id: tag2.id)
TrailTag.create(trail_id: trail1.id, tag_id: tag5.id)
TrailTag.create(trail_id: trail4.id, tag_id: tag6.id)