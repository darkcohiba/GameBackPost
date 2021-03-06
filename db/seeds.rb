# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "🌱 Seeding start!"

puts "seeding users mofo"

character1 = User.create(
    username: "arson",
    email: Faker::Internet.email,
    password: "fire"
)

character2 = User.create(
    username: "pass",
    email: Faker::Internet.email,
    password: "password"
)

character3 = User.create(
    username: "alain",
    email: Faker::Internet.email,
    password: "alainsucks"
)

character4 = User.create(
    username: "carl",
    email: Faker::Internet.email,
    password: "fuck"
)

character5 = User.create(
    username: "trex",
    email: Faker::Internet.email,
    password: "dino"
)

character6 = User.create(
    username: "wedge",
    email: Faker::Internet.email,
    password: "wedgesalad"
)

puts "🌱 Seeding games"

g1 = Game.create(
    game: "Flappy Bird",
    user_id: character6.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g2 = Game.create(
    game: "Flappy Bird",
    user_id: character4.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g3 = Game.create(
    game: "Flappy Bird",
    user_id: character3.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g4 = Game.create(
    game: "Flappy Bird",
    user_id: character2.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g5 = Game.create(
    game: "Flappy Bird",
    user_id: character4.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g6 = Game.create(
    game: "Flappy Bird",
    user_id: character6.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g7 = Game.create(
    game: "Snake",
    user_id: character5.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g8 = Game.create(
    game: "Snake",
    user_id: character3.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g9 = Game.create(
    game: "Snake",
    user_id: character2.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g10 = Game.create(
    game: "Snake",
    user_id: character1.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g11 = Game.create(
    game: "Snake",
    user_id: character1.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g12 = Game.create(
    game: "Snake",
    user_id: character2.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g13 = Game.create(
    game: "Flappy Bird",
    user_id: character3.id,
    score: Faker::Number.between(from: 3, to: 15)
)

g14 = Game.create(
    game: "Flappy Bird",
    user_id: character3.id,
    score: Faker::Number.between(from: 3, to: 15)
)




puts "🌱 Seeding done!"