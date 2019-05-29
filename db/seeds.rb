require 'faker'

puts "delete db"
# Mission.destroy_all
Partnair.destroy_all
# Reward.destroy_all
# User.destroy_all
# Family.destroy_all


# puts 'Creating 2 family'
# family = Family.new(
#   id: 1,
#   )
#   family.save!

# family = Family.new(
#   id: 2,
#   )
#   family.save!

# puts 'Finished'

# puts 'Creating 2 fake users...'


# user = User.new(
#    family_id: 1,
#    name: Faker::TvShows::BreakingBad.character,
#    password: "123soleil",
#    email: "toto@gmail.com",
#    created_at: "2019-04-03 14:44:28",
#    updated_at: "2019-04-03 14:44:28"
#  )
#  user.save!

# user = User.new(
#    family_id: 2,
#    name: Faker::TvShows::BreakingBad.character,
#    password: "123soleil",
#    email: "titi@gmail.com",
#    created_at: "2019-04-03 14:44:28",
#    updated_at: "2019-04-03 14:44:28"
#  )
#  user.save!

# puts 'Finished!'


# puts 'Creating 4 children'
# 4.times do
#   user = User.new(
#    family_id: rand(1..2),
#    name: Faker::TvShows::Simpsons.character,
#    point: 0,
#    password: "123soleil",
#    email: Faker::Internet.email,
#    child: true,
#    created_at: "2019-05-03 14:44:28",
#    updated_at: "2019-05-03 14:44:28"
#   )
#   user.save!
# end



Partnair.create!(
  name: "Arkose Bordeaux", 
  description:"C’est dans un ancien chai centenaire qu’Arkose pose ses blocs et crée son blocpark à Bordeaux. Pas besoin de savoir grimper pour y mettre un pied, ce secret spot abrite un véritable lieu de vie locale. Immersion dans le « new outside ».

  Le blocpark invite les esprits libres dans la nouvelle culture de grimpe. Blocs d’escalade, restaurant et bar éthiques, espace sauna, zone de chill et « work friendly », exposition d’artistes.",
  website: "https://bordeaux.arkose.com/"
)

Partnair.create!(
  name: "Escape Hunt", 
  description: "1- Entrez dans un nouvel univers 2- Faites-vous enfermer et trouvez les indices. 3-Jouez contre la montre et échappez-vous ! 5 THÈMES UNIQUES ET IMMERSIFS!
  ÊTES-VOUS PRÊT À RELEVER LE DÉFI?",
  website: "https://escapehunt.com/fr/bordeaux/"
)

Partnair.create!(
  name: "Wave Surf Café", 
  description: "La vague indoor du Wave Surf Café, rapproche l’océan et la montagne des centres ville de Bordeaux et Perpignan, et s'apparente à une rampe de skate infinie. Pratiquez votre sport de glisse préféré en retrouvant les sensations du surf, bodyboard, skimboard, wakeboard, snowboard et skate, grâce à nos planches spécifiques (bodyboard et surf).",
  website: "http://www.wave-surf-cafe.fr/"
)




# puts 'Creating 10 fake rewards...'
# 10.times do
#   reward = Reward.new(
#     user_id: rand(3..6),
#     name: Faker::Cannabis.buzzword,
#     price: rand(1..10)
#   )
#   reward.save!
# end
# puts 'Finished!'


# d1 = DateTime.new(2019, 3, 16)
# d2 = DateTime.new(2019, 5, 16)

# puts 'Creating 10 fake missions...'
# 10.times do
#   mission = Mission.new(
#     name: Faker::House.room,
#     user_id: rand(3..6),
#     point: rand(1..3),
#     start_at: d1,
#     end_at: d2,
#   )
#   mission.save!
# end
# puts 'Finished!'


