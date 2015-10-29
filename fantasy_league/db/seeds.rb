# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.delete_all

Team.create!(name: 'Moutohara Macaws', founded:'1 March 1872', mascot: 'Sparky')
Team.create!(name: 'Ballycastle Bats', founded:'6 November 1887', mascot: 'Barney the Fruitbat')
Team.create!(name: 'Kenmar Kestrels', founded:'24 May 1909', mascot: 'Kez')

Player.delete_all

Player.create!(first_name: 'Jonty', last_name: 'McLovin', team_id: '3', position: 'Idiot' , broomstick: 'Twig 4000')
Player.create!(first_name: 'Sarah', last_name: 'Chapelle', team_id: '1', position: 'Captain' , broomstick: 'Twig 2000')
Player.create!(first_name: 'Fenwick', last_name: 'Sneddon', team_id: '2', position: 'Beater' , broomstick: 'Twig 3000')