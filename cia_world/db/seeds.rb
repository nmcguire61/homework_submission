# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Each country needs a name, an image of its flag, a size (how many square miles of surface), a population, a first language, maybe more (currency, GDP in $bn, etc.)


Country.delete_all

Country.create!(name: 'Japan', flag: 'http://www.theodora.com/flags/new9/japan.gif', size: 145925, population: 126919659, language: 'Japanese (various)'  )
Country.create!(name: 'Sweden', flag: 'http://www.theodora.com/flags/new/sweden.gif', size: 175896, population: 9816666, language: 'Swedish'  )
Country.create!(name: 'Tokelau', flag: 'http://www.theodora.com/flags/new15/tokelau_flag.png', size: 3.86, population: 1411, language: 'Tokelauan'  )