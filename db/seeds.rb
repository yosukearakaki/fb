# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |n|
  Faker::Name.title
  email = Faker::Internet.email
#  avatar = Faker::Avatar.image
  image_url = Faker::Avatar.image
  password = "password"
 User.create!(name: name,
#              avatar: avatar,
              image_url: image_url,
              email: email,
              password: password,
              password_confirmation: password,
              uid: n,
              provider: n,
              )
end

10.times do |n|
    user_id = 1
    content = Faker::Music.instrument
    Topic.create!(user_id: user_id,
                  content: content,
                  )
end

10.times do |p|
  topic_id = 1
  user_id = 1
  content = Faker::LordOfTheRings.character
  Comment.create!(user_id: user_id,
                  topic_id: topic_id,
                  content: content,
                  )
end
