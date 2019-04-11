require 'faker'

puts "delete db"
Mission.destroy_all
Partnair.destroy_all
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
   name: Faker::TvShows::BreakingBad.character,
   password: "123soleil",
   email: "toto@gmail.com",
   created_at: "2019-04-03 14:44:28",
   updated_at: "2019-04-03 14:44:28"
 )
 user.save!

user = User.new(
   family_id: 2,
   name: Faker::TvShows::BreakingBad.character,
   password: "123soleil",
   email: "titi@gmail.com",
   created_at: "2019-04-03 14:44:28",
   updated_at: "2019-04-03 14:44:28"
 )
 user.save!

puts 'Finished!'


puts 'Creating 4 children'
4.times do
  user = User.new(
   family_id: rand(1..2),
   name: Faker::TvShows::Simpsons.character,
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
puts 'Creating 3 fake partnairs...'
3.times do
  partnair = Partnair.new(
    name: Faker::TvShows::Simpsons.location,
    description: Faker::TvShows::Simpsons.quote,
    price: rand(5..10)
  )
  partnair.save!
end
puts 'Finished!'

puts 'Creating 10 fake rewards...'
10.times do
  reward = Reward.new(
    user_id: rand(3..6),
    name: Faker::Cannabis.buzzword,
    price: rand(1..10)
  )
  reward.save!
end
puts 'Finished!'


d1 = DateTime.new(2019, 3, 16)
d2 = DateTime.new(2019, 5, 16)

puts 'Creating 10 fake missions...'
10.times do
  mission = Mission.new(
    name: Faker::House.room,
    user_id: rand(3..6),
    point: rand(1..3),
    start_at: d1,
    end_at: d2,
  )
  mission.save!
end
puts 'Finished!'


