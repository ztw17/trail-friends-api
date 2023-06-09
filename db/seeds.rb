# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Friendship.destroy_all

# Users
User.create(name: "Zach Weber", username: "ztw", email: "weberzt@email.co", password: BCrypt::Password.create("muirwoods"), location: "Denver, CO")
User.create(name: "Paul Bramos", username: "pjb", email: "pauljb@email.co", password: BCrypt::Password.create("olympicnational"), location: "Denver, CO")
User.create(name: "John Doe", username: "johnd", email: "doejohn@email.co", password: BCrypt::Password.create("verysecurepassword"), location: "Portland, OR")
User.create(name: "Jane Smith", username: "janes", email: "smithjane@email.co", password: BCrypt::Password.create("verysecurepassword"), location: "Seattle, WA")

user1 = User.first
user2 = User.second
user3 = User.third
user4 = User.fourth

# Friendships
Friendship.create(user_id: user1.id, friend_id: user2.id)
Friendship.create(user_id: user2.id, friend_id: user1.id)
Friendship.create(user_id: user3.id, friend_id: user4.id)
Friendship.create(user_id: user4.id, friend_id: user3.id)