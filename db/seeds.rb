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

p1 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    flappy_high_score: Faker::Number.between(from: 4, to: 15),
    dodo_high_score: Faker::Number.between(from: 3, to: 15),
    password_digest: "password"
)

p2 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    flappy_high_score: Faker::Number.between(from: 4, to: 15),
    dodo_high_score: Faker::Number.between(from: 3, to: 15),
    password_digest: "password"
)

p3 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    flappy_high_score: Faker::Number.between(from: 4, to: 15),
    dodo_high_score: Faker::Number.between(from: 3, to: 15),
    password_digest: "password"
)

p4 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    flappy_high_score: Faker::Number.between(from: 4, to: 15),
    dodo_high_score: Faker::Number.between(from: 3, to: 15),
    password_digest: "password"
)

p5 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    flappy_high_score: Faker::Number.between(from: 4, to: 15),
    dodo_high_score: Faker::Number.between(from: 3, to: 15),
    password_digest: "password"
)

p6 = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    flappy_high_score: Faker::Number.between(from: 4, to: 15),
    dodo_high_score: Faker::Number.between(from: 3, to: 15),
    password_digest: "password"
)

puts "🌱 Seeding games"

Game.create(
    game: "Flappy Bird",
    user_id: p1.id,
    score: Faker::Number.between(from: 3, to: 15)
)

Game.create(
    game: "Flappy Bird",
    user_id: p2.id,
    score: Faker::Number.between(from: 3, to: 15)
)

Game.create(
    game: "Flappy Bird",
    user_id: p3.id,
    score: Faker::Number.between(from: 3, to: 15)
)

Game.create(
    game: "Flappy Bird",
    user_id: p4.id,
    score: Faker::Number.between(from: 3, to: 15)
)

Game.create(
    game: "Doodle Jump",
    user_id: p5.id,
    score: Faker::Number.between(from: 3, to: 15)
)

Game.create(
    game: "Doodle Jump",
    user_id: p6.id,
    score: Faker::Number.between(from: 3, to: 15)
)


puts "🌱 Seeding done!"