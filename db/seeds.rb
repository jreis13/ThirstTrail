#Requiring
require 'json'
require 'rest-client'
require 'open-uri'

#Destroying DB
puts "Destroying DB"
Recipe.destroy_all

avatar1 = URI.open('https://images.unsplash.com/photo-1546776310-eef45dd6d63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1020&q=80')
admin = User.create(email: 'admin@test.com', first_name: 'admin', last_name: 'test', password: '123456')
admin.photo.attach(io: avatar1, filename: 'avatar1.png', content_type: 'image/png')
puts "Created user -admin-"

# Creating recipes
# Recipe 1
Recipe.create(name: "Absolutely Cranberry Smash",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Stir ingredients together. Serve over ice.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Absolut Vodka", "Cranberry juice", "Ginger ale", "Ice"],
              image_url: "https://images.unsplash.com/photo-1486947799489-3fabdd7d32a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80")
puts "Created recipe: Absolutely Cranberry Smash"

# Recipe 2
Recipe.create(name: "Strawberry Margarita",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Rub rim of cocktail glass with lemon juice and dip rim in salt. Shake schnapps, tequila, triple sec, lemon juice, and strawberries with ice, strain into the salt-rimmed glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour", "Salty"],
              ingredient: ["Strawberry schnapps", "Tequila", "Triple sec", "Lemon juice", "Strawberries", "Salt"],
              image_url: "https://images.unsplash.com/photo-1468465236047-6aac20937e92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=766&q=80")
puts "Created recipe: Strawberry Margarita"

# Recipe 3
Recipe.create(name: "Bora Bora",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Prepare in a blender or shaker, serve in a highball glass on the rocks. Garnish with 1 slice of pineapple and one cherry.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Pineapple juice", "Passion fruit juice", "Lemon juice", "Grenadine"],
              image_url: "https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/elle-a-table/recettes-de-cuisine/cocktail-bora-bora-sans-alcool-2806526/50409614-1-fre-FR/Cocktail-Bora-Bora-sans-alcool.jpg")
puts "Created recipe: Bora Bora"

# Recipe 4
Recipe.create(name: "Tequila Surprise",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Fill shot glass with Tequila. Add drops of Tobasco sauce.",
              alcohol: "Alcoholic",
              cocktail_category: ["Spicy"],
              ingredient: ["Tequila", "Tabasco sauce"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/8189p51504735581.jpg")
puts "Created recipe: Tequila Surprise"

# Recipe 5
Recipe.create(name: "Horse's Neck",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour brandy and ginger ale directly into highball glass with ice cubes. Stir gently. Garnish with lemon zest. If desired, add dashes of Angostura Bitter.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Lemon peel", "Brandy", "Ginger ale", "Bitters"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/006k4e1504370092.jpg")
puts "Created recipe: Horse's Neck"

# Recipe 6
Recipe.create(name: "Mountain Bramble",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Muddle the blackberries in a tumbler glass. Mix the Gin, lemon juice and sugar syrup in a shaker and strain over chopped ice. Top with Soda water and garnish with more blackberries and some mint",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Lemon Juice", "Sugar Syrup", "Blackberries", "Soda Water", "Mint"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/stwiva1619704025.jpg")
puts "Created recipe: Mountain Bramble"

# Recipe 7
Recipe.create(name: "Apple Highball",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Add ice in a highball glass. Rub a wedge of fresh lime around rim and place it in the glass. Add a shot of Apple schnapps, a shot of Courvoisier and top up with ginger ale.",
              alcohol: "Alcoholic",
              cocktail_category: ["Spicy"],
              ingredient: ["Lime", "Apple Schnapps", "Cognac", "Ginger"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/66mt9b1619695719.jpg")
puts "Created recipe: Apple Highball"

# Recipe 8
Recipe.create(name: "Snowball",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Place one ice cube in the glass and add 1 1/2 oz of Advocaat. Fill up the glass with lemonade and decorate with a slice of lemon. Serve at once.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Advocaat", "Lemonade", "Lemon", "Ice"],
              image_url: "https://images.unsplash.com/photo-1495270804540-e6d9120e6f50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80")
puts "Created recipe: Snowball"

# Recipe 9
Recipe.create(name: "Caipirinha",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Place lime and sugar into old fashioned glass and muddle (mash the two ingredients together using a muddler or a wooden spoon). Fill the glass with ice and add the Cachaça.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Sugar", "Lime", "Cachaca"],
              image_url: "https://www.liquor.com/thmb/OaPExqWCCu-1piry-BVdEOj7hdQ=/735x0/caipirnha-720x720-primary-40900f56782b4c1d8c79494c9b413f9c.jpg")
puts "Created recipe: Caipirinha"

# Recipe 10
Recipe.create(name: "Mango Mojito",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Squeeze the juice from 1½ limes and blend with the mango to give a smooth purée.\r\nCut the rest of the limes into quarters, and then cut each wedge in half again. Put 2 pieces of lime in a highball glass for each person and add 1 teaspoon of caster sugar and 5-6 mint leaves to each glass. Squish everything together with a muddler or the end of a rolling pin to release all the flavours from the lime and mint.\r\nDivide the mango purée between the glasses and add 30ml white rum and a handful of crushed ice to each one, stirring well to mix everything together. Top up with soda water to serve and garnish with extra mint, if you like.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Lime", "Mango", "Mint", "White Rum", "Ice", "Soda Water", "Mango"],
              image_url: "https://www.aberdeenskitchen.com/wp-content/uploads/2018/07/Fresh-Mint-Mango-Mojito-3.jpg")
puts "Created recipe: Mango Mojito"

# Recipe 11
Recipe.create(name: "Kiwi Martini",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "The kiwi martini is a very fun vodka cocktail and it is one of the best drinks that makes use of fresh fruit. Though there are a few recipes floating around, this is one of the easiest and it is an absolutely delightful green martini to drink.\r\n\r\nFor this recipe, you'll simply muddle slices of kiwi with simple syrup, then shake it with vodka. It's a drink that anyone can mix up in minutes and a perfect cocktail to show off your favorite vodka.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Kiwi", "Sugar Syrup", "Vodka", "Kiwi"],
              image_url: "https://image.freepik.com/fotos-gratis/cocktail-de-fruta-kiwi-no-copo-de-martini-guarnecido-com-fatias-de-maca-no-espeto-de-bambu_141793-1913.jpg")
puts "Created recipe: Kiwi Martini"

# Recipe 12
Recipe.create(name: "Adam Bomb",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Add ice to blender (or to glass if prefer on the rocks) then fruit, and fruite juice depending on personal prefference then add the Rum, Vodka, Tequila, and triple sec. blend till smooth, rim glass with sugar or salt and pour mixture in. garnish with lemon or lime slice.",
              alcohol: "Alcoholic",
              cocktail_category: ["Salty", "Fruity"],
              ingredient: ["Rum", "Vodka", "Tequila", "Triple sec", "Fruit", "Ice", "Salt", "Fruit juice"],
              image_url: "https://images.unsplash.com/photo-1512103865222-dcf9531c9961?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
puts "Created recipe: Adam Bomb"

# Recipe 13
Recipe.create(name: "A Furlong Too Late",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour the rum and ginger beer into a highball glass almost filled with ice cubes. Stir well. Garnish with the lemon twist.",
              alcohol: "Alcoholic",
              cocktail_category: ["Spicy"],
              ingredient: ["Light rum", "Ginger beer", "Lemon peel"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/ssxvww1472669166.jpg")
puts "Created recipe: A Furlong Too Late"

# Recipe 14
Recipe.create(name: "Pineapple Ginger-Ale Smoothie",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Throw everything into a blender and liquify.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Ginger ale", "Pineapple"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/eg9i1d1487603469.jpg")
puts "Created recipe: Pineapple Ginger-Ale Smoothie"

# Recipe 15
Recipe.create(name: "Frozen Mint Daiquiri",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into an old-fashioned glass and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Light rum", "Lime juice", "Mint", "Sugar"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/jrhn1q1504884469.jpg")
puts "Created recipe: Frozen Mint Daiquiri"

# Recipe 16
Recipe.create(name: "Kiwi Papaya Smoothie",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Throw everything into a blender and liquify.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Kiwi", "Papaya"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/jogv4w1487603571.jpg")
puts "Created recipe: Kiwi Papaya Smoothie"

# Recipe 17
Recipe.create(name: "Apple Berry Smoothie",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Throw everything into a blender and liquify.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Apple", "Berries"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/xwqvur1468876473.jpg")
puts "Created recipe: Apple Berry Smoothie"

# Recipe 18
Recipe.create(name: "Caipirissima",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction:  "Same as Caipirinha but instead of cachaca you add WHITE RUM. It's great!",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Lime", "Sugar", "White rum", "Ice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yd47111503565515.jpg")
puts "Created recipe: Caipirissima"

# Recipe 19
Recipe.create(name: "Blue Margarita",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Rub rim of cocktail glass with lime juice. Dip rim in coarse salt. Shake tequila, blue curacao, and lime juice with ice, strain into the salt-rimmed glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Salty"],
              ingredient: ["Tequila", "Blue Curacao", "Lime juice", "Salt"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/bry4qh1582751040.jpg")
puts "Created recipe: Blue Margarita"

# Recipe 20
Recipe.create(name: "Lassi Khara",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Blend (frappe) in blender until frothy. Add torn curry leaves and serve cold.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Salty"],
              ingredient: ["Yoghurt", "Water", "Salt", "Asafoetida"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/m1suzm1487603970.jpg")
puts "Created recipe: Lassi Khara"

# Recipe 21
Recipe.create(name: "Vampiro",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Vampiros may be made in a tall glass or an old fashioned glass. Bartenders may first \"rim\" the glass with Kosher Salt, which is done by placing a layer of Kosher Salt on a chopping board, moistening the glass' rim with lime juice or water, and then placing the upside down glass rim onto the Kosher Salt, so that the salt sticks to the moistened rim. The second step is to fill half the glass with ice and add one or two shooter glasses full of high quality Tequila. The next stage is to add the flavouring elements. This is done by squeezing a fresh lime into the glass, adding a few grains of salt, adding citrus-flavoured soda pop, until the glass is 4/5 full, and then adding spicy Viuda de Sanchez (or orange juice, lime juice and pico de gallo). The final step is to stir the ingredients so that the flavours are properly blended.",
              alcohol: "Alcoholic",
              cocktail_category: ["Salty"],
              ingredient: ["Tequila", "Blue Curacao", "Lime juice", "Salt"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yfhn371504374246.jpg")
puts "Created recipe: Vampiro"

# Recipe 22
Recipe.create(name: "Lemouroudji",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Juice the lemons. Peel and grate the ginger. Place the grated ginger and a liberal dash of the cayenne pepper into a piece of cheesecloth, and tie it into a knot. Let soak in the water. After 15 minutes or so, add the sugar, and the lemon juice. Chill, and serve.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Spicy"],
              ingredient: ["Ginger", "Water", "Lemon", "Sugar", "Cayenne pepper"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/eirmo71487603745.jpg")
puts "Created recipe: Lemouroudji"

# Recipe 23
Recipe.create(name: "Apello",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Stirr ingredients together and garnish with maraschino cherry.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Orange juice", "Grapefruit juice", "Apple juice", "Maraschino cherry"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/uptxtv1468876415.jpg")
puts "Created recipe: Appelo"

# Recipe 23
Recipe.create(name: "Downshift",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Start with the Sprite. Next comes the tequila. After that, add the Fruit Punch, then float the rum. Ice optional.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Fruit punch", "Sprite", "Tequila", "White rum"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/y36z8c1503563911.jpg")
puts "Created recipe: Downshift"

# Recipe 24
Recipe.create(name: "Fruit Flip-Flop",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Yogurt", "Fruit juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/y36z8c1503563911.jpg")
puts "Created recipe: Fruit Flip-Flop"

# Recipe 25
Recipe.create(name: "Bellini Martini",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Add ice cubes to shaker. Add vodka. Add peach schnapps. Add peach nectar. Shake. Strain into glass. Finish with lemon twist peel.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Ice", "Vodka", "Peach nectar", "Peach schnapps", "Lemon peel"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/3h9wv51504389379.jpg")
puts "Created recipe: Bellini Martini"

# Recipe 26
Recipe.create(name: "Mango Lassi",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Put it all in a blender and pour over crushed ice. You can also use other fruits like strawberries and bananas.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Mango", "Yogurt", "Sugar", "Water"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/1bw6sd1487603816.jpg")
puts "Created recipe: Mango Lassi"

# Recipe 27
Recipe.create(name: "Lemon Vodka Summertime",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Add all ingredients except lemon to shaker filled with ice. Cover and shake vigorously. Strain contents into ice filled collins glass. Garnish with lemon.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Lemon flavored vodka", "Sweet and sour", "Sprite", "Soda water", "Lemon"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/trpxxs1472669662.jpg")
puts "Created recipe: Lemon Vodka Summertime"

# Recipe 28
Recipe.create(name: "Garibaldi Negroni",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Mix together in a shaker and garnish with a simple orange slice. Fill your vitamin C and cocktail fix at the same time!",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Campari", "Sprite", "Orange juice", "Orange peel"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/kb4bjg1604179771.jpg")
puts "Created recipe: Garibaldi Negroni"

# Recipe 29
Recipe.create(name: "Amaretto Sour",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake and strain. Garnish with a cherry and an orange slice.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Amaretto", "Sour mix"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/xnzc541493070211.jpg")
puts "Created recipe: Amaretto Sour"

# Recipe 30
Recipe.create(name: "Monkey Gland",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Shake well over ice cubes in a shaker, strain into a chilled cocktail glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Orange juice", "Benedictine", "Grenadine"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/94psp81504350690.jpg")
puts "Created recipe: Monkey Gland"

# Recipe 31
Recipe.create(name: "Atlantic Sun",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all the ingredients, top the drink with soda. Garnish with a slice of orange.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity", "Sour"],
              ingredient: ["Vodka", "Southern Comfort", "Passion fruit syrup", "Sweet and sour", "Club soda"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/doyxqb1493067556.jpg")
puts "Created recipe: Atlantic Sun"

# Recipe 32
Recipe.create(name: "Tom Collins",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all the ingredients, top the drink with soda. Garnish with a slice of orange.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Lemon juice", "Sugar", "Maraschino cherry", "Club soda", "Orange"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/7cll921606854636.jpg")
puts "Created recipe: Tom Collins"

# Recipe 33
Recipe.create(name: "Arctic Fish",
              event_type: ["Home", "Special Ocasion"],
              instruction: "DO NOT STIR! Be sure to serve well chilled.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Orange juice", "Grape soda", "Ice", "Candy"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/ttsvwy1472668781.jpg")
puts "Created recipe: Arctic Fish"

# Recipe 34
Recipe.create(name: "Blue Lagoon",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour vodka and curacao over ice in a highball glass. Fill with lemonade, top with the cherry, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Vodka", "Blue coracao", "Lemonade", "Cherry"],
              image_url: "https://www.liquor.com/thmb/u98GkkZ5MzQ9tD1zwWkfiOisLtQ=/720x720/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__liquor__2019__07__12152657__blue-lagoon-720x720-recipe-647fb82bc3214de68e0eed9aed5afbfa.jpg")
puts "Created recipe: Blue Lagoon"

# Recipe 35
Recipe.create(name: "Frozen Pineapple Daiquiri",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into a cocktail glass and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Light rum", "Pineapple", "Lime juice", "Sugar"],
              image_url: "https://www.carolinescooking.com/wp-content/uploads/2018/07/frozen-pineapple-daiquiri-side-pic.jpg")
puts "Created recipe: Frozen Pineapple Daiquiri"

# Recipe 36
Recipe.create(name: "Bloody Mary",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Stirring gently, pour all ingredients into highball glass. Garnish.",
              alcohol: "Alcoholic",
              cocktail_category: ["Spicy"],
              ingredient: ["Vodka", "Tomato juice", "Lemon juice", "Worcestershire sauce", "Tabasco sauce", "Lime"],
              image_url: "http://www.newideafood.com.au/media/14932/classic-bloody-mary-720x720-recipe.jpg")
puts "Created recipe: Bloody Mary"

# Recipe 37
Recipe.create(name: "Cranberry Punch",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Combine first four ingredients. Stir until sugar is dissolved, chill. Then add ginger ale just before serving. Add ice ring to keep punch cold.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Cranberry juice", "Sugar", "Pineapple juice", "Almond flavoring", "Ginger ale"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/mzgaqu1504389248.jpg")
puts "Created recipe: Cranberry Punch"

# Recipe 38
Recipe.create(name: "San Francisco",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Take a tall glass and put in a few ice cubes, fill the vodka over it and fill with juice then the \"creme\", to end fill in the grenadine but very carefully at the side of the glass so it will lay down in the bottom. garnish with orange and strawberry.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Creme de Banane", "Grenadine", "Orange juice"],
              image_url: "https://cocktailteam.net/wp-content/uploads/2017/12/Cocktail-San-Francisco-scaled-1.jpg")
puts "Created recipe: San Francisco"

# Recipe 39
Recipe.create(name: "Grape, Lemon and Pineapple Smoothie",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Throw everything into a blender and liquify.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Grapes", "Lemon", "Pineapple"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/54z5h71487603583.jpg")
puts "Created recipe: Grape, Lemon and Pineapple Smoothie"

# Recipe 40
Recipe.create(name: "Lemon Elderflower Spritzer",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour all ingredients over ice, stir and enjoy!",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Elderflower cordial", "Vodka", "Soda Water", "Fresh Lemon Juice", "Bourbon", "Lemon peel"],
              image_url: "https://cdn.shopify.com/s/files/1/0033/9148/8089/articles/fullsizeoutput_1d6_f8b5c5d2-6a32-4441-aa9b-7ea5a5195190_1024x1024.jpeg?v=1571064801")
puts "Created recipe: Lemon Elderflower Spritzer"

# Recipe 41
Recipe.create(name: "Cuba Libre",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Build all ingredients in a Collins glass filled with ice. Garnish with lime wedge.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Light rum", "Lime", "Coca-cola"],
              image_url: "https://www.liquor.com/thmb/6df-ikPyroejnvFPuIYwvhHO2NE=/735x0/__opt__aboutcom__coeus__resources__content_migration__liquor__2018__01__02105149__Cuba-Libre-720x720-recipe-673b48bbef034d89b6b5149b8417c7d5.jpg")
puts "Created recipe: Cuba Libre"

# Recipe 42
Recipe.create(name: "Rum Runner",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Mix all ingredients in glass & add ice.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Rum", "Blackberry brandy", "Orange juice", "Pineapple juice", "Cranberry juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vqws6t1504888857.jpg")
puts "Created recipe: Rum Runner"

# Recipe 43
Recipe.create(name: "Ipanema",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Cut half a lime into pieces, place in a shaker, add the sugar and crush. Measure the passion fruit juice, add it to the shaker and fill up with ice cubes. Close the shaker and shake vigorously. Pour the liquid into a glass, top up with ginger ale, stir with a teaspoon and then garnish the rim of the glass with a slice of lime",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Lime", "Brown sugar", "Passion fruit juice", "Ginger ale", "Ice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yswuwp1469090992.jpg")
puts "Created recipe: Ipanema"

# Recipe 44
Recipe.create(name: "Long Island Iced Tea",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Mix all contents in a highball glass and sitr gently. Add dash of Coca-Cola for the coloring and garnish with lemon or lime twist.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Vodka", "Tequila", "Light rum", "Gin", "Coca-Cola", "Lemon peel"],
              image_url: "https://www.supergoldenbakes.com/wordpress/wp-content/uploads/2019/07/Long_island_iced_tea-1-4s.jpg")
puts "Created recipe: Long Island Iced Tea"

# Recipe 45
Recipe.create(name: "Spiced Peach Punch",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Cut half a lime into pieces, place in a shaker, add the sugar and crush. Measure the passion fruit juice, add it to the shaker and fill up with ice cubes. Close the shaker and shake vigorously. Pour the liquid into a glass, top up with ginger ale, stir with a teaspoon and then garnish the rim of the glass with a slice of lime",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Peach nectar", "Orange juice", "Brown sugar", "Cinnamon", "Cloves", "Lime juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/qxvypq1468924331.jpg")
puts "Created recipe: Spiced Peach Punch"

# Recipe 46
Recipe.create(name: "Brave Bull Shooter",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour Tabasco into bottom of shot glass and fill with tequila.",
              alcohol: "Alcoholic",
              cocktail_category: ["Spicy"],
              ingredient: ["Tequila", "Tabasco sauce"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yrtypx1473344625.jpg")
puts "Created recipe: Brave Bull Shooter"

# Recipe 47
Recipe.create(name: "Barracuda",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake ingredients with ice. Strain into glass & top with sparkling wine.",
              alcohol: "Alcoholic",
              cocktail_category: ["Spicy"],
              ingredient: ["Rum", "Galliano", "Pineapple Juice", "Lime juice", "Prosecco"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/jwmr1x1504372337.jpg")
puts "Created recipe: Barracuda"

# Recipe 48
Recipe.create(name: "Tequila Sunrise",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour the tequila and orange juice into glass over ice. Add the grenadine, which will sink to the bottom. Stir gently to create the sunrise effect. Garnish and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Tequila", "Orange juice", "Grenadine"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/quqyqp1480879103.jpg")
puts "Created recipe: Tequila Sunrise"

# Recipe 49
Recipe.create(name: "Banana Strawberry Shake",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Blend all together in a blender until smooth.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Strawberries", "Banana", "Yogurt", "Milk", "Honey"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vqquwx1472720634.jpg")
puts "Created recipe: Banana Strawberry Shake"

# Recipe 50
Recipe.create(name: "Citrus Vodka Killer",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Just shake it and you're good to go.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka lemon", "Orange juice", "Triple sec", "Ginger ale"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yvxrwv1472669728.jpg")
puts "Created recipe: Citrus Vodka Killer"

sleep 1

puts "All set, DB created!"
