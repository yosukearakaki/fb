# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |n|
  name = Faker::Pokemon.name
  email = Faker::Internet.email
  password = "password"
 User.create!(name: name,
              email: email,
              password: password,
              password_confirmation: password,
              uid: n,
              provider: n,
              )
end

10.times do |n|
    user_id = 4
    content = Faker::Music.instrument
    Topic.create!(user_id: user_id,
                content: content,
                )
end
