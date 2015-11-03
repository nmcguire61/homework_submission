Category.delete_all
Ingredient.delete_all
Recipe.delete_all
Quantity.delete_all


dinner = Category.create!(name: 'dinner')
breakfast = Category.create!(name: 'breakfast')
lunch = Category.create!(name: 'Lunch')


r1=Recipe.create!(name: 'Bacon Pancakes', method: "Bacon Pancakes. Making Bacon Pancakes. Take some bacon and I'll put it in a pancake. Bacon Pancakes That's what its gonna make. Bacon Pancakes.", category_id: breakfast.id )
r2=Recipe.create!(name: 'Liver and fava beans', method: "serve with a nice chianti", category_id: lunch.id )
r3=Recipe.create!(name: 'Royale with cheese', method: "Make a quarter-pounder burger, then add cheese.", category_id: dinner.id )
r4=Recipe.create!(name: 'Martini', method: "Three measures of Gordon's, one of vodka, half a measure of Kina Lillet. Shake it very well until it's ice-cold, then add a large thin slice of lemon peel.", category_id: breakfast.id)


i1 = Ingredient.create!(name: 'bacon'),
i2 = Ingredient.create!(name: 'pancakes'),
i3 = Ingredient.create!(name: 'liver'),
i4 = Ingredient.create!(name: 'fava beans'),
i5 = Ingredient.create!(name: 'quarter-pounder burger'),
i6 = Ingredient.create!(name: 'cheese'),
i7 = Ingredient.create!(name: 'Gordons gin'),
i8 = Ingredient.create!(name: 'vodka'),
i9 = Ingredient.create!(name: 'Kina Lillet'),
i10 = Ingredient.create!(name: 'lemon peel')


Quantity.create!(recipe: r1, ingredient: i1, quantity: 'loads')
Quantity.create!(recipe: r1, ingredient: i2, quantity: 'a hefty stack')

Quantity.create!(recipe: r2, ingredient: i3, quantity: '1 healthy specimen')
Quantity.create!(recipe: r2, ingredient: i4, quantity: '200 tin')

Quantity.create!(recipe: r3, ingredient: i5, quantity: '1 or 10')
Quantity.create!(recipe: r3, ingredient: i6, quantity: '12 kgs')
Quantity.create!(recipe: r4, ingredient: i7, quantity: '3 measures')
Quantity.create!(recipe: r4, ingredient: i8, quantity: '1 measure')
Quantity.create!(recipe: r4, ingredient: i9, quantity: '0.5 measure')
Quantity.create!(recipe: r4, ingredient: i10, quantity: 'slice')



