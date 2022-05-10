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
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password_digest: "password"
)

character2 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password_digest: "password"
)

character3 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password_digest: "password"
)

character4 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password_digest: "password"
)

character5 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password_digest: "password"
)

character6 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password_digest: "password"
)

puts "🌱 Seeding games"

g1 = Game.create(
    game: "Flappy Bird",
    score: Faker::Number.between(from: 3, to: 15)
)

g2 = Game.create(
    game: "Flappy Bird",
    score: Faker::Number.between(from: 3, to: 15)
)

g3 = Game.create(
    game: "Flappy Bird",
    score: Faker::Number.between(from: 3, to: 15)
)

g4 = Game.create(
    game: "Flappy Bird",
    score: Faker::Number.between(from: 3, to: 15)
)

g5 = Game.create(
    game: "Doodle Jump",
    score: Faker::Number.between(from: 3, to: 15)
)

g6 = Game.create(
    game: "Doodle Jump",
    score: Faker::Number.between(from: 3, to: 15)
)

g7 = Game.create(
    game: "Snake",
    score: Faker::Number.between(from: 3, to: 15)
)

g8 = Game.create(
    game: "Snake",
    score: Faker::Number.between(from: 3, to: 15)
)

g9 = Game.create(
    game: "Snake",
    score: Faker::Number.between(from: 3, to: 15)
)

g10 = Game.create(
    game: "Snake",
    score: Faker::Number.between(from: 3, to: 15)
)

g11 = Game.create(
    game: "Snake",
    score: Faker::Number.between(from: 3, to: 15)
)

g12 = Game.create(
    game: "Snake",
    score: Faker::Number.between(from: 3, to: 15)
)

g13 = Game.create(
    game: "Snake",
    score: Faker::Number.between(from: 3, to: 15)
)

g14 = Game.create(
    game: "Snake",
    score: Faker::Number.between(from: 3, to: 15)
)

Usergame.create(
    user_id: character1.id,
    game_id: g1.id
)



puts "🌱 Seeding done!"