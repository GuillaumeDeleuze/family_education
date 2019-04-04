require 'faker'

puts "delete db"
Mission.destroy_all
Reward.destroy_all
Child.destroy_all
Family.destroy_all
User.destroy_all



puts 'Creating 1 fake users...'


user = User.new(
   id: 1,
   password: "123soleil",
   email: "toto@gmail.com",
   created_at: "2019-04-03 14:44:28",
   updated_at: "2019-04-03 14:44:28"
 )
 user.save!

puts 'Finished!'

puts 'Creating 1 family'
family= Family.new(
  id: 1,
  user_id: 1
  )
  family.save!

puts 'Finished'

puts 'Creating 1 childrens'
child = Child.new(
   password: "123soleil",
   email: "george@gmail.com",
   family_id: 1,
   created_at: "2019-05-03 14:44:28",
   updated_at: "2019-05-03 14:44:28"
 )
 child.save!

puts 'Finished'

puts 'Creating 20 fake rewards...'
20.times do
  reward = Reward.new(
    name: Faker::Beer.name,
    price: rand(1..10),
    family_id: 1
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
    point: rand(1..3),
    family_id: 1,
    start_at: d1,
    end_at: d2,
  )
  mission.save!
end
puts 'Finished!'


