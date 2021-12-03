# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 require 'json'
 require 'rest-client'
 require 'open-uri'

# puts "Destroying ingredients"
# Ingredient.destroy_all

 puts "Destroying recipes"
 Recipe.destroy_all

# puts "Destroying recipes ingredients"
# RecipeIngredient.destroy_all

# puts "Collecting ingredients"

# url = "https://www.thecocktaildb.com/api/json/v2/9973533/list.php?i=list"
# ingredients_data = JSON.parse(RestClient.get(url))

# ingredients_data['drinks'].each do |ingredient|
  # Ingredient.new(name: ingredient["strIngredient1"]).save
# end

# puts "#{Ingredient.count} created."

#  url = "https://www.thecocktaildb.com/api/json/v2/9973533/recent.php"
#  recipes_data = JSON.parse(RestClient.get(url))

#  #recipes_data['drinks'].each do |drink|
#    recipe = Recipe.new(
#    # name: drink["strDrink"],
#     # instruction: drink["strInstructions"]
#      image_url: drink["strDrinkThumb"]
#    )
#    recipe.save
#  end
  # i = 1

  # 15.times do
    # ingredient = drink["strIngredient#{i}"]
    # if ingredient.nil? || ingredient == ""
      # break
    # end

    # measure = drink["strMeasure#{i}"]
    # RecipeIngredient.new(recipe: recipe, ingredient: Ingredient.find_by_name# (ingredient), measure: measure)
    # i += 1
  # end
# end

# puts "All set. #{Recipe.count} recipes created"


avatar1 = URI.open('https://photos.smugmug.com/photos/i-86cmLwG/0/XL/i-86cmLwG-XL.jpg')
joao = User.create(email: 'joao@gmail.com', first_name: 'Joao', last_name: 'Reis', password: '123456')
joao.photo.attach(io: avatar1, filename: 'avatar1.png', content_type: 'image/png')

puts "Created user -joao-"

avatar2 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-VBwKbFF/1/7f98968c/XL/211105%20Le%20Wagon%20mug%20shots_144-XL.jpg')
david = User.create(email: 'david@gmail.com', first_name: 'David', last_name: 'Carmo', password: '123456')
david.photo.attach(io: avatar2, filename: 'avatar2.png', content_type: 'image/png')

puts "Created user -david-"

avatar3 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-W3xT8h6/0/f2212de9/X2/211105%20Le%20Wagon%20mug%20shots_114-X2.jpg')
viktoriia = User.create(email: 'viktoriia@gmail.com', first_name: 'Viktoriia', last_name: 'Katyukova', password: '123456')
viktoriia.photo.attach(io: avatar3, filename: 'avatar3.png', content_type: 'image/png')

# random drink added here
# url = "www.thecocktaildb.com/api/json/v1/1/random.php"
# random_cocktail = JSON.parse(RestClient.get(url))

recipe1 = Recipe.create(name: "Absolutely Cranberry Smash",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Stir ingredients together. Serve over ice.",
 alcohol: "Alcoholic",
 cocktail_category: ["Fruity"],
 ingredient: ["Absolut Vodka", "Cranberry juice", "Ginger ale", "Ice"],
 image_url: "https://images.unsplash.com/photo-1486947799489-3fabdd7d32a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80")

recipe2 = Recipe.create(name: "Strawberry Margarita",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Rub rim of cocktail glass with lemon juice and dip rim in salt. Shake schnapps, tequila, triple sec, lemon juice, and strawberries with ice, strain into the salt-rimmed glass, and serve.",
 alcohol: "Alcoholic",
 cocktail_category: ["Sour", "Salty"],
 ingredient: ["Strawberry schnapps", "Tequila", "Triple sec", "Lemon juice", "Strawberries", "Salt"],
 image_url: "https://images.unsplash.com/photo-1468465236047-6aac20937e92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=766&q=80")

recipe3 = Recipe.create(name: "Bora Bora",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Prepare in a blender or shaker, serve in a highball glass on the rocks. Garnish with 1 slice of pineapple and one cherry.",
 alcohol: "Non alcoholic",
 cocktail_category: ["Fruity"],
 ingredient: ["Pineapple juice", "Passion fruit juice", "Lemon juice", "Grenadine"],
 image_url: "https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/elle-a-table/recettes-de-cuisine/cocktail-bora-bora-sans-alcool-2806526/50409614-1-fre-FR/Cocktail-Bora-Bora-sans-alcool.jpg")

 recipe4 = Recipe.create(name: "Tequila Surprise",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Fill shot glass with Tequila. Add drops of Tobasco sauce.",
 alcohol: "Alcoholic",
 cocktail_category: ["Spicy"],
 ingredient: ["Tequila", "Tabasco sauce"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/8189p51504735581.jpg")

 recipe5 = Recipe.create(name: "Horse's Neck",
 event_type: ["Home", "Special Ocasion"],
 instruction: "Pour brandy and ginger ale directly into highball glass with ice cubes. Stir gently. Garnish with lemon zest. If desired, add dashes of Angostura Bitter.",
 alcohol: "Alcoholic",
 cocktail_category: ["Sour"],
 ingredient: ["Lemon peel", "Brandy", "Ginger ale", "Bitters"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/006k4e1504370092.jpg")

 recipe6 = Recipe.create(name: "Mountain Bramble",
 event_type: ["Home", "Special Ocasion"],
 instruction: "Muddle the blackberries in a tumbler glass. Mix the Gin, lemon juice and sugar syrup in a shaker and strain over chopped ice. Top with Soda water and garnish with more blackberries and some mint",
 alcohol: "Alcoholic",
 cocktail_category: ["Fruity"],
 ingredient: ["Gin", "Lemon Juice", "Sugar Syrup", "Blackberries", "Soda Water", "Mint"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/stwiva1619704025.jpg")

 recipe7 = Recipe.create(name: "Apple Highball",
 event_type: ["Home", "Business","Special Ocasion"],
 instruction: "Add ice in a highball glass. Rub a wedge of fresh lime around rim and place it in the glass. Add a shot of Apple schnapps, a shot of Courvoisier and top up with ginger ale.",
 alcohol: "Alcoholic",
 cocktail_category: ["Spicy"],
 ingredient: ["Lime", "Apple Schnapps", "Cognac", "Ginger"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/66mt9b1619695719.jpg")

 recipe8 = Recipe.create(name: "Snowball",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Place one ice cube in the glass and add 1 1/2 oz of Advocaat. Fill up the glass with lemonade and decorate with a slice of lemon. Serve at once.",
 alcohol: "Alcoholic",
 cocktail_category: ["Sour"],
 ingredient: ["Advocaat", "Lemonade", "Lemon", "Ice"],
 image_url: "https://images.unsplash.com/photo-1495270804540-e6d9120e6f50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80")

 recipe9 = Recipe.create(name: "Caipirinha",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Place lime and sugar into old fashioned glass and muddle (mash the two ingredients together using a muddler or a wooden spoon). Fill the glass with ice and add the Cachaça.",
 alcohol: "Alcoholic",
 cocktail_category: ["Sour"],
 ingredient: ["Sugar", "Lime", "Cachaca"],
 image_url: "https://www.liquor.com/thmb/OaPExqWCCu-1piry-BVdEOj7hdQ=/735x0/caipirnha-720x720-primary-40900f56782b4c1d8c79494c9b413f9c.jpg")

 recipe10 = Recipe.create(name: "Mango Mojito",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Squeeze the juice from 1½ limes and blend with the mango to give a smooth purée.\r\nCut the rest of the limes into quarters, and then cut each wedge in half again. Put 2 pieces of lime in a highball glass for each person and add 1 teaspoon of caster sugar and 5-6 mint leaves to each glass. Squish everything together with a muddler or the end of a rolling pin to release all the flavours from the lime and mint.\r\nDivide the mango purée between the glasses and add 30ml white rum and a handful of crushed ice to each one, stirring well to mix everything together. Top up with soda water to serve and garnish with extra mint, if you like.",
 alcohol: "Alcoholic",
 cocktail_category: ["Fruity"],
 ingredient: ["Lime", "Mango", "Mint", "White Rum", "Ice", "Soda Water", "Mango"],
 image_url: "https://www.aberdeenskitchen.com/wp-content/uploads/2018/07/Fresh-Mint-Mango-Mojito-3.jpg")

 recipe11 = Recipe.create(name: "Kiwi Martini",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "The kiwi martini is a very fun vodka cocktail and it is one of the best drinks that makes use of fresh fruit. Though there are a few recipes floating around, this is one of the easiest and it is an absolutely delightful green martini to drink.\r\n\r\nFor this recipe, you'll simply muddle slices of kiwi with simple syrup, then shake it with vodka. It's a drink that anyone can mix up in minutes and a perfect cocktail to show off your favorite vodka.",
 alcohol: "Alcoholic",
 cocktail_category: ["Sour"],
 ingredient: ["Kiwi", "Sugar Syrup", "Vodka", "Kiwi"],
 image_url: "https://image.freepik.com/fotos-gratis/cocktail-de-fruta-kiwi-no-copo-de-martini-guarnecido-com-fatias-de-maca-no-espeto-de-bambu_141793-1913.jpg")

 recipe12 = Recipe.create(name: "Adam Bomb",
 event_type: ["Home", "Special Ocasion"],
 instruction: "Add ice to blender (or to glass if prefer on the rocks) then fruit, and fruite juice depending on personal prefference then add the Rum, Vodka, Tequila, and triple sec. blend till smooth, rim glass with sugar or salt and pour mixture in. garnish with lemon or lime slice.",
 alcohol: "Alcoholic",
 cocktail_category: ["Salty", "Fruity"],
 ingredient: ["Rum", "Vodka", "Tequila", "Triple sec", "Fruit", "Ice", "Salt", "Fruit juice"],
 image_url: "https://images.unsplash.com/photo-1512103865222-dcf9531c9961?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")

 recipe13 = Recipe.create(name: "A Furlong Too Late",
 event_type: ["Home", "Special Ocasion"],
 instruction: "Pour the rum and ginger beer into a highball glass almost filled with ice cubes. Stir well. Garnish with the lemon twist.",
 alcohol: "Alcoholic",
 cocktail_category: ["Spicy"],
 ingredient: ["Light rum", "Ginger beer", "Lemon peel"],
image_url: "https://www.thecocktaildb.com/images/media/drink/ssxvww1472669166.jpg")

 recipe14 = Recipe.create(name: "Pineapple Gingerale Smoothie",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Throw everything into a blender and liquify.",
 alcohol: "Non-Alcoholic",
 cocktail_category: ["Spicy"],
 ingredient: ["Ginger", "Pineapple"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/eg9i1d1487603469.jpg")

 recipe15 = Recipe.create(name: "Frozen Mint Daiquiri",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into an old-fashioned glass and serve.",
 alcohol: "Alcoholic",
 cocktail_category: ["Sour"],
 ingredient: ["Light rum", "Lime juice", "Mint", "Sugar"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/jrhn1q1504884469.jpg")

 recipe16 = Recipe.create(name: "Kiwi Papaya Smoothie",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Throw everything into a blender and liquify.",
 alcohol: "Non-Alcoholic",
 cocktail_category: ["Fruity"],
 ingredient: ["Kiwi", "Papaya"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/jogv4w1487603571.jpg")

 recipe17 = Recipe.create(name: "Apple Berry Smoothie",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Throw everything into a blender and liquify.",
 alcohol: "Non-Alcoholic",
 cocktail_category: ["Fruity"],
 ingredient: ["Apple", "Berries"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/xwqvur1468876473.jpg")

 recipe18 = Recipe.create(name: "Caipirissima",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction:  "Same as Caipirinha but instead of cachaca you add WHITE RUM. It's great!",
 alcohol: "Alcoholic",
 cocktail_category: ["Sour"],
 ingredient: ["Lime", "Sugar", "White rum", "Ice"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/yd47111503565515.jpg")

 recipe19 = Recipe.create(name: "Blue Margarita",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Rub rim of cocktail glass with lime juice. Dip rim in coarse salt. Shake tequila, blue curacao, and lime juice with ice, strain into the salt-rimmed glass, and serve.",
 alcohol: "Alcoholic",
 cocktail_category: ["Salty"],
 ingredient: ["Tequila", "Blue Curacao", "Lime juice", "Salt"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/bry4qh1582751040.jpg")

 recipe20 = Recipe.create(name: "Lassi Khara",
 event_type: ["Home", "Special Ocasion"],
 instruction: "Blend (frappe) in blender until frothy. Add torn curry leaves and serve cold.",
 alcohol: "Non-Alcoholic",
 cocktail_category: ["Salty"],
 ingredient: ["Yoghurt", "Water", "Salt", "Asafoetida"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/m1suzm1487603970.jpg")

 recipe21 = Recipe.create(name: "Vampiro",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Vampiros may be made in a tall glass or an old fashioned glass. Bartenders may first \"rim\" the glass with Kosher Salt, which is done by placing a layer of Kosher Salt on a chopping board, moistening the glass' rim with lime juice or water, and then placing the upside down glass rim onto the Kosher Salt, so that the salt sticks to the moistened rim. The second step is to fill half the glass with ice and add one or two shooter glasses full of high quality Tequila. The next stage is to add the flavouring elements. This is done by squeezing a fresh lime into the glass, adding a few grains of salt, adding citrus-flavoured soda pop, until the glass is 4/5 full, and then adding spicy Viuda de Sanchez (or orange juice, lime juice and pico de gallo). The final step is to stir the ingredients so that the flavours are properly blended.",
 alcohol: "Alcoholic",
 cocktail_category: ["Salty"],
 ingredient: ["Tequila", "Blue Curacao", "Lime juice", "Salt"],
 image_url: "https://www.thecocktaildb.com/images/media/drink/yfhn371504374246.jpg")
