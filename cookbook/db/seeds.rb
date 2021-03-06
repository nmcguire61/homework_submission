# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.delete_all

dinner = Category.create!(name: 'dinner')
breakfast = Category.create!(name: 'breakfast')
lunch = Category.create!(name: 'Lunch')

Recipe.delete_all

bacon_pancakes = Recipe.create!(name: 'Bacon Pancakes', method: "Bacon Pancakes. Making Bacon Pancakes. Take some bacon and I'll put it in a pancake. Bacon Pancakes That's what its gonna make. Bacon Pancakes.", category_id: breakfast.id )
lafb = Recipe.create!(name: 'Liver and fava beans', method: "serve with a nice chianti", category_id: lunch.id )
rwc = Recipe.create!(name: 'Royale with cheese', method: "Make a quarter-pounder burger, then add cheese.", category_id: dinner.id )
martini = Recipe.create!(name: 'Martini', method: "Three measures of Gordon's, one of vodka, half a measure of Kina Lillet. Shake it very well until it's ice-cold, then add a large thin slice of lemon peel.", category_id: breakfast.id)

Ingredient.delete_all

bacon = Ingredient.create!(name: 'bacon')
pancakes = Ingredient.create!(name: 'pancakes')
liver = Ingredient.create!(name: 'liver')
fava_beans = Ingredient.create!(name: 'fava beans')
quarter_pounder_burger = Ingredient.create!(name: 'quarter-pounder burger')
cheese = Ingredient.create!(name: 'cheese')
gin = Ingredient.create!(name: 'Gordons gin')
vodka = Ingredient.create!(name: 'vodka')
kina_lillet = Ingredient.create!(name: 'Kina Lillet')
lemon_peel = Ingredient.create!(name: 'lemon peel')

bacon_pancakes.quantities.create!(ingredient: bacon, amount: '2 large')
bacon_pancakes.quantities.create!(ingredient: pancakes, amount: '1 pinch')

lafb.quantities.create!(ingredient: liver, amount: "1 census taker's")
lafb.quantities.create!(ingredient: fava_beans, amount: '200 grams')

rwc.quantities.create!(ingredient: quarter_pounder_burger, amount: '2 pinches')
rwc.quantities.create!(ingredient: cheese, amount: 'half a large')

martini.quantities.create!(ingredient: gin, amount: '100 grams')
martini.quantities.create!(ingredient: vodka, amount: '100 grams')
martini.quantities.create!(ingredient: kina_lillet, amount: '100 grams')
martini.quantities.create!(ingredient: lemon_peel, amount: '100 grams')
