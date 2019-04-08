require 'faker'

puts "delete db"
Mission.destroy_all
Reward.destroy_all
User.destroy_all
Family.destroy_all


puts 'Creating 2 family'
family = Family.new(
  id: 1,
  )
  family.save!

family = Family.new(
  id: 2,
  )
  family.save!

puts 'Finished'

puts 'Creating 2 fake users...'


user = User.new(
   family_id: 1,
   password: "123soleil",
   email: "toto@gmail.com",
   created_at: "2019-04-03 14:44:28",
   updated_at: "2019-04-03 14:44:28"
 )
 user.save!

user = User.new(
   family_id: 2,
   password: "123soleil",
   email: "titi@gmail.com",
   created_at: "2019-04-03 14:44:28",
   updated_at: "2019-04-03 14:44:28"
 )
 user.save!

puts 'Finished!'


puts 'Creating 5 children'
5.times do
  user = User.new(
   family_id: rand(1..2),
   name: Faker::TvShows::BojackHorseman.character,
   point: 0,
   password: "123soleil",
   email: Faker::Internet.email,
   child: true,
   created_at: "2019-05-03 14:44:28",
   updated_at: "2019-05-03 14:44:28"
  )
  user.save!
end


puts 'Finished'

puts 'Creating 20 fake rewards...'
20.times do
  reward = Reward.new(
    user_id: rand(3..7),
    name: Faker::Beer.name,
    price: rand(1..10)
  )
  reward.save!
end
puts 'Finished!'


d1 = DateTime.new(2019, 3, 16)
d2 = DateTime.new(2019, 5, 16)

puts 'Creating 20 fake missions...'
20.times do
  mission = Mission.new(
    name: Faker::House.room,
    user_id: rand(3..7),
    point: rand(1..3),
    start_at: d1,
    end_at: d2,
  )
  mission.save!
end
puts 'Finished!'


