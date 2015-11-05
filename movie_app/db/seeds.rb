# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.delete_all
Viewing.delete_all
User.delete_all

moon = Movie.create!(title: 'Moon', about: 'Sam Rockwell stars in this film revolving around a man coming to the end of his 3 year stint on the moon.', review: 'Beautiful story of self discovery.')
avatar = Movie.create!(title: 'Avatar', about: 'Sam Worthington stars as a paraplegic former marine sent to help mining efforts on the planet of Pandora.', review: 'James Cameron brings all the cgis in this Fern Gulley rip off.')
filth = Movie.create!(title: 'Filth', about: 'James McAvoy stars as a deeply disturbed detective in this drama.', review: 'Great performances and script make this film an uncomfortable delight from start to finish.')

v1 = Viewing.create!(when_viewed: '4 years ago', viewing_type: "DVD", movie_id: moon.id)
v2 = Viewing.create!(when_viewed: '6 years ago', viewing_type: "cinema", movie_id: avatar.id)
v3 = Viewing.create!(when_viewed: '2 years ago', viewing_type: "cinema", movie_id: filth.id)

u1 = User.create!(name: 'Neil')