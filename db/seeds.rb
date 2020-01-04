require 'faker'

puts "delete db"
# Mission.destroy_all
Partnair.destroy_all
# Reward.destroy_all
# User.destroy_all
# Family.destroy_all



Partnair.create!(
  name: "Urban Quest Bordeaux", 
  description:"Code promo de 15% pour réserver une partie chez nous.

  Découvrez nos jeux urbains !
  
  A la croisé entre un escape game et un jeu de piste connecté, constituez votre équipe de 2 à 5 joueurs et tentez de réussir le plus de challenge et 
  de résoudre le maximum d’énigmes dans la ville de Bordeaux. Vous avez 60 minutes pour récolter le plus de points. Que la meilleure équipe gagne ! 
  L'activité est adapté à partir de 10 ans avec adulte et 14 ans sans adulte dans l'équipe.
  La durée totale de l’activité dure 1h30 environ avec : 
  – 15 min de briefing
  – 60 min de jeu dans la ville
  – 15 min de debriefing",
  website: "https://urbanquest.fr/jeux-urbains/bordeaux-challenge/",
  code: "widouEH15"
)

Partnair.create!(
  name: "Escape Hunt Bordeaux", 
  description: "Code promo de 15% pour réserver une partie chez nous.

  Ce code est valable dans nos deux établissements : 
  Escape Hunt Gare Saint-Jean
  - Jack L’Eventreur (3 salles)
  - Le Manoir d’H.H.Holmes (1 salle) déconseillé au moins de 16 ans
  - Meurtre au port de la lune (2 salles) avec un mode enfant disponible (7 à 12 ans sans adulte)
  - Le casse de Saint-Emilion (2 salles)
  
  Escape Hunt Tourny
  - Le Protocole (3 salles) déconseillé au moins de 14 ans",
  website: "https://escapehunt.com/fr/bordeaux/",
  code: "widouUQ15"
)

Partnair.create!(
  name: "So Nice Surf School", 
  description: "Nos proposons des cours de surf, se déroulant sur la magnifique plage du Porge Océan. 
  Nous choisissons les spots les moins fréquentés pour vous permettre de progresser en toute sécurité, sur des vagues adaptées. 
  Différentes formules sont possibles : séance découverte 35 euros, stage 3 séances (90 euros), stage 5 séances (140 euros) : les cours durent deux heures, la pratique se fait dans un cours collectif de 8 personnes maximum, encadré par un moniteur diplômé d’État, le matériel est inclus.
  Nous proposons également des semaines dans notre surfcamp situé à proximité de la plage, pour adolescents de 14 à 17 ans en juillet, et pour adultes en août.
  Promo : - 5 % sur les cours de surf collectifs (séances découvertes et stages 3 et 5 séances), et un stick solaire 50+ offert pour l'achat d'une semaine de surfcamp (ado en juillet ou adulte en août)",
  website: "https://sonicesurfschool.com/",
  code: ""
)

Partnair.create!(
  name: "REIV", 
  description: "Traversez un manoir hanté, partez à la découverte des fonds marins, montez sur un ring de boxe, jouez sur le rythme de la musique, défiez le temps…
  Découvrez notre catalogue régulièrement actualisés avec un contenu varié d’une vingtaine de jeux aux multiples univers. Il y a en a pour tous les goûts !
  MAIS AUSSI… UN ESPACE CAFÉ 
  Pour se détendre et se retrouver entre deux parties, REIV propose également un espace café avec retransmission de séries, films et d’e-sport. 
  Le champ des possibles est ouvert chez REIV, choisissez un autre monde.
  Profitez d'une offre promotionnelle de -15% sur le tarif standard du lundi ou vendredi de 17h à 21h.",
  website: "https://www.reiv.eu/",
  code: "widoureiv15"
)

Partnair.create!(
  name: "RC mini race", 
  description: "Sur les hauteurs de Bouliac, à 15 mn de Bordeaux centre, venez vivre une nouvelle expérience. Profitez d'un moment de détente en famille et partagez une course unique en son genre. 
  Seul ou à plusieurs, installez-vous aux commandes d’une voiture de course miniature. Depuis votre cockpit, pilotez un mini bolide équipé d’une caméra HD sur un vrai circuit de plus de 120 m². 
  Huit pilotes peuvent se confronter à toute vitesse sur une piste ou s’enchainent  courbes, virages en épingle et lignes droites. 
  Les petits bolides évoluant sur le circuit assurent le spectacle pour les accompagnants dans un cadre unique et innovant.",
  website: "https://rcmini.fr/",
  code: ""
)
