# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Friendship.destroy_all

# Users
User.create(name: "Zach Weber", username: "ztw", email: "weberzt@email.co", password: BCrypt::Password.create("muirwoods"), location: "Denver, CO")
User.create(name: "Paul Bramos", username: "pjb", email: "pauljb@email.co", password: BCrypt::Password.create("olympicnational"), location: "Denver, CO")
User.create(name: "John Doe", username: "johnd", email: "doejohn@email.co", password: BCrypt::Password.create("verysecurepassword"), location: "Seattle, WA")
User.create(name: "Jane Smith", username: "janes", email: "smithjane@email.co", password: BCrypt::Password.create("verysecurepassword"), location: "Seattle, WA")

# Friendships
Friendship.create(user_id: 1, friend_id: 2)
Friendship.create(user_id: 2, friend_id: 1)
Friendship.create(user_id: 3, friend_id: 4)
Friendship.create(user_id: 4, friend_id: 3)