# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
#
require 'faker'

10.times do |blog|
  Blog.create!(
    title: "#{Faker::Lorem.sentence}",
    body: "#{Faker::Lorem.paragraph}"
    )
end

10.times do |skill|
  Skill.create!(
    title: "#{Faker::ProgrammingLanguage.name}",
    percent_utilized: "#{Faker::Number.between(from: 1, to: 100)}"
    )
end

10.times do |portfolio|
  Portfolio.create!(
    title: "#{Faker::Book.title}",
    subtitle: "#{Faker::Book.genre}",
    body: "#{Faker::Lorem.paragraph}",
    main_image: "#{Faker::Placeholdit.image }",
    thumb_image: "#{Faker::Placeholdit.image(size: "50x60")}"
    )
end
