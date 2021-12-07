# Requiring
require 'json'
require 'rest-client'
require 'open-uri'

# Destroying DB
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
              image_url: "https://bartendr.s3.us-west-2.amazonaws.com/images/Adam%20Bomb.jpg")
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
              image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/blue-lagoon-f2fd71f.jpg?quality=90&resize=504,458")
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

# Recipe 51
Recipe.create(name: "Chocolate Black Russian",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Combine all ingredients in an electric blender and blend at a low speed for a short length of time. Pour into a chilled champagne flute and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Kahlua", "Vodka", "Chocolate ice-cream"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yyvywx1472720879.jpg")
puts "Created recipe: Chocolate Black Russian"

# Recipe 52
Recipe.create(name: "Screaming Orgasm",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour first vodka, then Bailey's, then Kahlua into a cocktail glass over crushed ice. Stir. Caution: use only high quality vodka. Cheap vodka can cause the Bailey's to curdle. Test your brand of vodka by mixing 1 Tsp each of vodka and Bailey's first.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Vodka", "Baileys irish cream", "Kahlua"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/x894cs1504388670.jpg")
puts "Created recipe: Screaming Orgasm"

# Recipe 53
Recipe.create(name: "Almeria",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Dark rum", "Kahlua", "Egg white"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/rwsyyu1483388181.jpg")
puts "Created recipe: Almeria"

# Recipe 54
Recipe.create(name: "Pysch Vitamin Light",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake with ice.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Orange juice", "Apple juice", "Pineapple juice", "Ice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/xsqsxw1441553580.jpg")
puts "Created recipe: Pysch Vitamin Light"

# Recipe 55
Recipe.create(name: "Big Red",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour ingredients into 1 ounce shot glass",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Irish cream", "Goldschlager"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yqwuwu1441248116.jpg")
puts "Created recipe: Big Red"

# Recipe 56
Recipe.create(name: "Martinez 2",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Add all ingredients to a mixing glass and fill with ice. Stir until chilled, and strain into a chilled coupe glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Gin", "Sweet Vermouth", "Maraschino Liqueur", "Angostura Bitters"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/fs6kiq1513708455.jpg")
puts "Created recipe: Martinez 2"

# Recipe 57
Recipe.create(name: "Port Wine Flip",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients (except nutmeg) with ice and strain into a whiskey sour glass. Sprinkle nutmeg on top and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Port", "Light cream", "Powdered sugar", "Egg", "Nutmeg"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vrprxu1441553844.jpg")
puts "Created recipe: Port Wine Flip"

# Recipe 58
Recipe.create(name: "Port Wine Cocktail",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Stir ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Port", "Brandy"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/qruprq1441553976.jpg")
puts "Created recipe: Port Wine Cocktail"

# Recipe 59
Recipe.create(name: "Zenmeister",
              event_type: ["Home", "Business", "Special OOcasion"],
              instruction: "Mix together and enjoy",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Jägermeister", "Root beer"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/qyuvsu1479209462.jpg")
puts "Created recipe: Zenmeister"

# Recipe 60
Recipe.create(name: "Long Island Tea",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Combine all ingredients (except cola) and pour over ice in a highball glass. Add the splash of cola for color. Decorate with a slice of lemon and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Vodka", "Light rum", "Gin", "Tequila", "Lemon", "Coca-Cola"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/nkwr4c1606770558.jpg")
puts "Created recipe: Long Island Tea"

# Recipe 61
Recipe.create(name: "Blueberry Mojito",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Muddle the blueberries with the other ingredients and serve in a highball glass. Garnish with mint and a half slice of lime.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Dark Rum", "Lime Juice", "Sugar", "Blueberries", "Lemon-lime soda"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/07iep51598719977.jpg")
puts "Created recipe: Blueberry Mojito"

# Recipe 62
Recipe.create(name: "Zoksel",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "No specific mixing instructions, just pour every ingredient in one glass. The lemon goes with it.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Beer", "Root beer", "Lemonade", "Coca-Cola", "7-Up", "Creme de Cassis", "Lemon",],
              image_url: "https://www.thecocktaildb.com/images/media/drink/ft8ed01485620930.jpg")
puts "Created recipe: Zoksel"

# Recipe 63
Recipe.create(name: "Acapulco",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Combine and shake all ingredients (except mint) with ice and strain into an old-fashioned glass over ice cubes. Add the sprig of mint and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Light rum", "Triple sec", "Lime juice", "Sugar", "Egg white", "Mint"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/il9e0r1582478841.jpg")
puts "Created recipe: Acapulco"

# Recipe 64
Recipe.create(name: "Bluebird",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "In a mixing glass half-filled with crushed ice, combine the gin, triple sec, Curacao, and bitters. Stir well. Strain into a cocktail glass and garnish with the lemon twist and the cherry.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Triple sec", "Blue Curacao", "Bitters", "Maraschino cherry", "Lemon peel"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/5jhyd01582579843.jpg")
puts "Created recipe: Bluebird"

# Recipe 65
Recipe.create(name: "Midnight Manx",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Fill a mixer with ice and add Baileys, Kahlua, Goldshlager, and cream. Shake for 5 seconds and Strain into a double rocks glass filled with ice. Add chilled coffee Stir and enjoy!",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Kahlua", "Baileys irish cream", "Goldschlager", "Heavy cream", "Coffee"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/uqqurp1441208231.jpg")
puts "Created recipe: Midnight Manx"

# Recipe 66
Recipe.create(name: "Applecar",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Applejack", "Triple sec", "Lemon juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/sbffau1504389764.jpg")
puts "Created recipe: Applecar"

# Recipe 67
Recipe.create(name: "Alice in Wonderland",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Just mix the three ingredients one to one to one",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Amaretto", "Grand Marnier", "Southern Comfort"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/g12lj41493069391.jpg")
puts "Created recipe: Alice in Wonderland"

# Recipe 68
Recipe.create(name: "Alexander",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Gin", "Creme de Cacao", "Light cream", "Nutmeg"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/0clus51606772388.jpg")
puts "Created recipe: Alexander"

# Recipe 69
Recipe.create(name: "Slippery Nipple",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour the Sambuca into a shot glass, then pour the Irish Cream on top so that the two liquids do not mix.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Sambuca", "Irish cream"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/l9tgru1551439725.jpg")
puts "Created recipe: Slippery Nipple"

# Recipe 70
Recipe.create(name: "Queen Charlotte",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour red wine and grenadine into a collins glass over ice cubes. Fill with lemon-lime soda, stir, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Red wine", "Grenadine", "Lemon-lime soda"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vqruyt1478963249.jpg")
puts "Created recipe: Queen Charlotte"

# Recipe 71
Recipe.create(name: "Golden Dream",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake with cracked ice. Strain into glass and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Galliano", "Triple Sec", "Orange juice", "Cream"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/qrot6j1504369425.jpg")
puts "Created recipe: Golden dream"

# Recipe 72
Recipe.create(name: "Flaming Lamborghini",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour the Sambuca and Kahlua into the Cocktail Glass and give the drinker a straw. Pour the Baileys and Blue Curacao into two sepsrate shot glasses either side of the cocktail glass. Set light the concotion in the cocktail glass and start to drink through the straw (this drink should be drunk in one) , as the bottom of the glass is reached put out the fire by pouring the Baileys and Blue Curacao into the cocktail glass and keep drinking till it's all gone!!",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Kahlua", "Sambuca", "Blue Curacao", "Baileys irish cream"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yywpss1461866587.jpg")
puts "Created recipe: Flaming Lamborghini"

# Recipe 73
Recipe.create(name: "Aztec Punch",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Mix all ingredients in a pitcher. Mix thoroughly and pour into whatever is available, the bigger the better! This drink packs a big punch, so don't over do it.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Lemonade", "Vodka", "Rum", "Ginger ale"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/uqwuyp1454514591.jpg")
puts "Created recipe: Aztec Punch"

# Recipe 74
Recipe.create(name: "Jackhammer",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Serve over ice - Warning: Deadly!",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Jack Daniels","Amaretto"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/9von5j1504388896.jpg")
puts "Created recipe: Jackhammer"

# Recipe 75
Recipe.create(name: "Moranguito",
              event_type: ["Home", "Special Ocasion"],
              instruction: "first you put rhe absinthe, then put tequila, then put the Granadine syrup.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Absinthe", "Tequila", "Grenadine"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/urpsyq1475667335.jpg")
puts "Created recipe: Moranguito"

# Recipe 76
Recipe.create(name: "Classic Old-Fashioned",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "In an old-fashioned glass, muddle the bitters and water into the sugar cube, using the back of a teaspoon. Almost fill the glass with ice cubes and add the bourbon. Garnish with the orange slice and the cherry. Serve with a swizzle stick.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Bitters", "Water", "Sugar", "Bourbon", "Orange", "Maraschino cherry"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/w8cxqv1582485254.jpg")
puts "Created recipe: Classic Old-Fashioned"

# Recipe 77
Recipe.create(name: "Godchild",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients well with cracked ice, strain into a champagne flute, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Vodka", "Amaretto", "Heavy cream"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/m5nhtr1504820829.jpg")
puts "Created recipe: Godchild"

# Recipe 78
Recipe.create(name: "B-53",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Layer the Kahlua, Sambucca and Grand Marnier into a shot glas in that order. Better than B-52",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Kahlua", "Sambuca", "Grand Marnier"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/rwqxrv1461866023.jpg")
puts "Created recipe: B-53"

# Recipe 79
Recipe.create(name: "Darkwood Sling",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "There are many good cherry liqueurs you can use, but I prefere Heering. Add one share of the liqueur. Then you add one share of Soda. For a sour sling use Tonic (most people prefer the drink without Tonic). Afterwards you fill the glass with Orange Juice and ice cubes.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Cherry Heering", "Soda water", "Orange juice", "Ice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/sxxsyq1472719303.jpg")
puts "Created recipe: Darkwood Sling"

# Recipe 80
Recipe.create(name: "Black Russian",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour the ingredients into an old fashioned glass filled with ice cubes. Stir gently.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Coffee liqueur", "Vodka"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/8oxlqf1606772765.jpg")
puts "Created recipe: Black Russian"
# Recipe 80
Recipe.create(name: "Black Russian",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour the ingredients into an old fashioned glass filled with ice cubes. Stir gently.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Coffee liqueur", "Vodka"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/8oxlqf1606772765.jpg")
puts "Created recipe: Black Russian"

# Recipe 81
Recipe.create(name: "Manhattan",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Stirred over ice, strained into a chilled glass, garnished, and served up.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Sweet Vermouth", "Bourbon", "Angostura bitters", "Ice", "Maraschino cherry", "Orange peel"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yk70e31606771240.jpg")
puts "Created recipe: Manhattan"

# Recipe 82
Recipe.create(name: "Mississippi Planters Punch",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients (except carbonated water) with ice and strain into a collins glass over ice cubes. Fill with carbonated water, stir, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Brandy", "Light rum", "Bourbon", "Lemon", "Powdered sugar", "Carbonated water"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/urpyqs1439907531.jpg")
puts "Created recipe: Mississippi Planters Punch"

# Recipe 83
Recipe.create(name: "Miami Vice",
              event_type: ["Home", "Special Ocasion"],
              instruction: "First: Mix pina colada with 2.5 oz. of rum with ice(set aside). Second: Mix daiquiri with 2.5 oz. of rum with ice. Third: While frozen, add pina colda mix then daiquiri mix in glass (Making sure they do not get mixed together).",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["151 proof rum", "Pina colada mix", "Daiquiri mix"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/qvuyqw1441208955.jpg")
puts "Created recipe: Miami Vice"

# Recipe 84
Recipe.create(name: "Citrus Coke",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour half of coke in a glass. Then add Bacardi and top it off with the remaining coke. Stir and drink up!",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Bacardi Limon", "Coca-Cola"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/uyrvut1479473214.jpg")
puts "Created recipe: Citrus Coke"

# Recipe 85
Recipe.create(name: "English Rose Cocktail",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Rub rim of cocktail glass with lemon juice and dip rim of glass in powdered sugar. Shake all ingredients (except cherry) with ice and strain into sugar-rimmed glass. Top with the cherry and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Apricot brandy", "Gin", "Dry Vermouth", "Grenadine", "Lemon juice", "Cherry"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yxwrpp1441208697.jpg")
puts "Created recipe: English Rose Cocktail"

# Recipe 86
Recipe.create(name: "Jack Rose Cocktail",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Apple brandy", "Grenadine", "Lime"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/uuqqrv1439907068.jpg")
puts "Created recipe: Jack Rose Cocktail"

# Recipe 87
Recipe.create(name: "Rum Punch",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Mix all ingredients in a punch bowl and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Ginger ale", "Fruit punch", "Orange juice", "Ice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/wyrsxu1441554538.jpg")
puts "Created recipe: Rum Punch"

# Recipe 88
Recipe.create(name: "Apple Slammer",
              event_type: ["Home", "Special Ocasion"],
              instruction: "pour into a shot glass and present to consumer, they are expected to cover the top of the shotglass with thier palm, raise the glass, slam it on the bar and the swallow quickly.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["7-Up", "Apple schnapps"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/09yd5f1493069852.jpg")
puts "Created recipe: Apple Slammer"

# Recipe 89
Recipe.create(name: "Apricot Punch",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour all ingrediants into a large punch bowl. Add ice and 4 oranges that are peeled and divided.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Apricot brandy", "Champagne", "Vodka", "7-Up", "Orange juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/tuxxtp1472668667.jpg")
puts "Created recipe: Apricot Punch"

# Recipe 90
Recipe.create(name: "Dirty Nipple",
              event_type: ["Home", "Special Ocasion"],
              instruction: "This is a layered shot - the Bailey's must be on top",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Kahlua", "Sambuca", "Baileys irish cream"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vtyqrt1461866508.jpg")
puts "Created recipe: Dirty Nipple"

# Recipe 91
Recipe.create(name: "Sidecar Cocktail",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Salty"],
              ingredient: ["Brandy", "Triple sec", "Lemon"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/ewjxui1504820428.jpg")
puts "Created recipe: Sidecar Cocktail"

# Recipe 92
Recipe.create(name: "Chocolate Milk",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Put the milk in the bottom, pour the Liquer on top and add the dash of amaretto. Do not mix. SLAM IT!",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Chocolate liqueur", "Milk", "Amaretto"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/j6q35t1504889399.jpg")
puts "Created recipe: Chocolate Milk"

# Recipe 93
Recipe.create(name: "Orange Whip",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour ingredients over ice and stir.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Orange juice", "Rum", "Vodka", "Cream", "Ice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/ttyrxr1454514759.jpg")
puts "Created recipe: Orange Whip"

# Recipe 94
Recipe.create(name: "Almond Joy",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Amaretto", "Creme de Cacao", "Light cream"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/xutuqs1483388296.jpg")
puts "Created recipe: Almond Joy"

# Recipe 95
Recipe.create(name: "Addison",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake together all the ingredients and strain into a cold glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Gin", "Vermouth"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yzva7x1504820300.jpg")
puts "Created recipe: Addison"

# Recipe 96
Recipe.create(name: "Valencia Cocktail",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Apricot brandy", "Orange juice", "Orange bitters"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/9myuc11492975640.jpg")
puts "Created recipe: Valencia Cocktail"

# Recipe 97
Recipe.create(name: "Halloween Punch",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Tip the cherry juice, orange peel, chilli, cinnamon sticks, cloves and ginger into a large saucepan. Simmer for 5 mins, then turn off the heat. Leave to cool, then chill for at least 4 hrs, or up to 2 days – the longer you leave it the more intense the flavours. If serving to young children, take the chilli out after a few hours. When you’re ready to serve, pour the juice into a jug. Serve in glass bottles or glasses and pop a straw in each. If you're adding vodka, do so at this stage. Dangle a fangs sweet from each glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Spicy"],
              ingredient: ["Cherry Juice", "Orange Peel", "Red Chili Flakes", "Cloves", "Ginger", "Vodka"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/7hcgyj1571687671.jpg")
puts "Created recipe: Halloween Punch"

# Recipe 98
Recipe.create(name: "Artillery",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Stir all ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Sweet Vermouth", "Gin", "Bitters"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/g1vnbe1493067747.jpg")
puts "Created recipe: Artillery"

# Recipe 99
Recipe.create(name: "Boulevardier",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Stir with ice, strain, garnish and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Campari", "Sweet Vermouth", "Rye whiskey", "Orange Peel"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/km84qi1513705868.jpg")
puts "Created recipe: Boulevardier"

# Recipe 100
Recipe.create(name: "155 Belmont",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Blend with ice. Serve in a wine glass. Garnish with carrot.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Dark rum", "Light rum", "Vodka", "Orange juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yqvvqs1475667388.jpg")
puts "Created recipe: 155 Belmont"

# Recipe 101
Recipe.create(name: "Kurant Tea",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour Absolut Kurant into a comfortably big tea-cup. Add the not too hot(!) apple tea and, if you like, some sugar. Enjoy!",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Absolut Kurant", "Tea", "Sugar"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/xrsrpr1441247464.jpg")
puts "Created recipe: Kurant Tea"

# Recipe 102
Recipe.create(name: "Creme de Menthe",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Bring sugar and water to a boil and simmer for 10 minutes. Cool. Add the remaining ingredients and stir. Cover and let ripen for 1 month.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Sugar", "Water", "Grain alcohol", "Peppermint extract", "Food coloring"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yxswtp1441253918.jpg")
puts "Created recipe: Creme de Menthe"

# Recipe 103
Recipe.create(name:  "Kentucky Colonel",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "In a shaker half-filled with ice cubes combine the courbon and Benedictine. Shake and strain into a cocktail glass. Garnish with the lemon twist.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Bourbon", "Benedictine", "Lemon peel"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/utqwpu1478820348.jpg")
puts "Created Kentucky Colonel"

# Recipe 104
Recipe.create(name: "Tom Collins",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "In a shaker half-filled with ice cubes, combine the gin, lemon juice, and sugar. Shake well. Strain into a collins glass alomst filled with ice cubes. Add the club soda. Stir and garnish with the cherry and the orange slice.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Lemon juice", "Sugar", "Club soda", "Maraschino cherry", "Orange"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/7cll921606854636.jpg")
puts "Created recipe: Tom Collins"

# Recipe 105
Recipe.create(name: "Pink Gin",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour the bitters into a wine glass. Swirl the glass to coat the inside with the bitters, shake out the excess. Pour the gin into the glass. Do not add ice.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Bitters", "Gin"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/qyr51e1504888618.jpg")
puts "Created recipe: Pink Gin"

# Recipe 106
Recipe.create(name: "Quick Sand",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Simply add the orange juice, quite a quick pour in order to mix the sambucca with the orange juice. The juice MUST have fruit pulp!",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Black Sambuca", "Orange juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vprxqv1478963533.jpg")
puts "Created recipe: Quick Sand"

# Recipe 107
Recipe.create(name: "The Galah",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Mix together the alcoholic portions and top with Pineapple and Lime juice.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Dark Rum", "Campari", "Creme De Banane", "Pineapple Juice", "Lime Juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/sy7y6r1614775067.jpg")
puts "Created recipe: The Galah"

# Recipe 108
Recipe.create(name: "Kamikaze",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Shake all ingredients together with ice. Strain into glass, garnish and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Triple sec", "Lime juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/d7ff7u1606855412.jpg")
puts "Created recipe: Kamikaze"

# Recipe 109
Recipe.create(name: "Side Car",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Blend with ice. Serve in a wine glass. Garnish with carrot.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Cognac", "Cointreau", "Lemon juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/x72sik1606854964.jpg")
puts "Created recipe: Side Car"

# Recipe 110
Recipe.create(name: "Jello Shots",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Boil 3 cups of water then add jello. Mix jello and water until jello is completely disolved. Add the two cups of vodka and mix together. Pour mixture into plastic shot glasses and chill until firm. Then, eat away...",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Vodka", "Jello", "Water"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/l0smzo1504884904.jpg")
puts "Created recipe: Jello Shots"

# Recipe 111
Recipe.create(name: "Scotch Sour",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake scotch, juice of lime, and powdered sugar with ice and strain into a whiskey sour glass. Decorate with 1/2 slice lemon, top with the cherry, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Scotch", "Lime", "Powdered sugar", "Lemon","Cherry"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/0dnb6k1504890436.jpg")
puts "Created recipe: Scotch Sour"

# Recipe 112
Recipe.create(name: "Gideon's Green Dinosaur",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Add all ingredients in collins glass with ice and stir.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Dark rum", "Vodka", "Triple sec", "Tequila", "Melon liqueur", "Mountain Dew"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/p5r0tr1503564636.jpg")
puts "Created recipe: Gideon's Green Dinosaur"

# Recipe 113
Recipe.create(name: "Sex on the Beach",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Build all ingredients in a highball glass filled with ice. Garnish with orange slice.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Peach schnapps", "Cranberry juice", "Grapefruit juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/lijtw51551455287.jpg")
puts "Created recipe: Sex on the Beach"

# Recipe 114
Recipe.create(name: "Martini",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Dry Vermouth", "Olive"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/71t8581504353095.jpg")
puts "Created recipe: Martini"

# Recipe 115
Recipe.create(name: "Angel Face",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Shake all ingredients with ice and strain contents into a cocktail glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Apricot brandy", "Apple brandy", "Gin"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vaukir1606772580.jpg")
puts "Created recipe: Angel Face"

# Recipe 116
Recipe.create(name: "Amaretto Stinger",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake ingredients well with cracked ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Amaretto", "White Creme de Menthe"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vvop4w1493069934.jpg",)
puts "Created recipe: Amaretto Stinger"

# Recipe 117
Recipe.create(name: "Sweet Bananas",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Milk", "Banana", "Honey"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/sxpcj71487603345.jpg")
puts "Created recipe: Sweet Bananas"

# Recipe 118
Recipe.create(name: "Baby Eskimo",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Leave ice-cream out for about 10 minutes. Add ingredients in order, stir with chopstick (butter knife or spoon works too). Consume immediately and often. Nice and light, great for following a heavy drink.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Kahlua", "Milk", "Vanilla ice-cream"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/wywrtw1472720227.jpg")
puts "Created recipe: Baby Eskimo"

# Recipe 119
Recipe.create(name: "Grizzly Bear",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Served over ice. Sounds nasty, but tastes great.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Amaretto", "Jägermeister", "Kahlua", "Milk"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/k6v97f1487602550.jpg")
puts "Created recipe: Grizzly Bear"

# Recipe 120
Recipe.create(name: "Passion Fruit Martini",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour all ingredients into a glass and stir. Garnish with half a passion fruit piece.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Sugar Syrup", "Passion fruit juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/6trfve1582473527.jpg")
puts "Created recipe: Passion Fruit Martini"

# Recipe 121
Recipe.create(name: "Fruit Cooler",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Served over ice. Sounds nasty, but tastes great.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Apple juice", "Strawberries", "Sugar", "Lemon", "Apple", "Soda water", "Ice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/i3tfn31484430499.jpg")
puts "Created recipe: Fruit Cooler"

# Recipe 122
Recipe.create(name: "Pink Penocha",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Mix all ingredients into bowl keep iced stir frequently",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Everclear", "Vodka", "Peach schnapps", "Orange juice", "Cranberry juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/6vigjx1503564007.jpg")
puts "Created recipe: Pink Penocha"

# Recipe 123
Recipe.create(name: "Veteran",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour the rum and cherry brandy into an old-fashioned glass almost filled with ice cubes. Stir well.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Dark rum", "Cherry brandy"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/iwml9t1492976255.jpg")
puts "Created recipe: Veteran"

# Recipe 124
Recipe.create(name: "Sherry Eggnog",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Shake sherry, powdered sugar, and egg with ice and strain into a collins glass. Fill with milk and stir. Sprinkle nutmeg on top and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Sherry", "Powdered sugar", "Egg", "Milk", "Nutmeg"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/xwrpsv1478820541.jpg")
puts "Created recipe: Sherry Eggnog"

# Recipe 125
Recipe.create(name: "Egg Cream",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Mix syrup and milk in a fountain glass. Add soda water, serve with a straw.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Chocolate syrup", "Milk", "Soda water"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/mvis731484430445.jpg")
puts "Created recipe: Egg Cream"

# Recipe 126
Recipe.create(name: "The Strange Weaver",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Mix ingredients slowly in a glass with ice, garnish with orange slice",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Light Rum", "Gin", "Sweet Vermouth", "Campari", "Lemon Juice", "Orgeat Syrup", "Orange Peel"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/opxjzh1604179528.jpg")
puts "Created recipe: The Strange Weaver"

# Recipe 127
Recipe.create(name: "Apple Karate",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Apple juice", "Carrot"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/syusvw1468876634.jpg")
puts "Created recipe: Apple Karate"

# Recipe 128
Recipe.create(name: "Casa Blanca",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Light rum", "Triple sec", "Lime juice", "Maraschino liqueur"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/usspxq1441553762.jpg")
puts "Created recipe: Casa Blanca"

# Recipe 129
Recipe.create(name: "Pineapple Paloma",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Rub the rim of each glass with lime slice and dip into salt. Add ice, tequila, grapefruit juice, lime juice and top with pineapple soda. Give it a quick stir. Garnish with fresh pineapple or lime.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Tequila", "Grapefruit Juice", "Fresh Lime Juice", "Pineapple Juice", "Lime", "Pepper"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/pg8iw31593351601.jpg")
puts "Created recipe: Pineapple Paloma"

# Recipe 130
Recipe.create(name: "Bruised Heart",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour all ingredients in a mixing tin over ice, stir, and strain into shot glass",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Chambord raspberry liqueur", "Peachtree schnapps", "Cranberry juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/7if5kq1503564209.jpg")
puts "Created recipe: Bruised Heart"

# Recipe 131
Recipe.create(name: "Absolut Evergreen",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Mix, pour over ice and top up with Bitter Lemon.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Absolut Citron", "Pisang Ambon", "Ice", "Bitter lemon"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/wrxrxp1472812609.jpg")
puts "Created recipe: Absolut Evergreen"

# Recipe 132
Recipe.create(name: "Brainteaser",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Layered erin first, then sambuca and then avocart(should sit in middle of other two. To drink: use a straw to suck up avocart then shot the rest and then suck fumes up through straw.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Sambuca", "Erin Cream", "Advocaat"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/ruywtq1461866066.jpg")
puts "Created recipe: Brainteaser"

# Recipe 133
Recipe.create(name: "Microwave Hot Cocoa",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Combine sugar, cocoa, salt and hot water in 1-quart micro-proof measuring cup (or coffee mug). Microwave at HIGH (100%) for 1 to 1 1/2 minutes or until boiling. Add milk, sitr and microwave an additonal 1 1/2 to 2 minutes or until hot. Stir in vanilla, blend well.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Sugar", "Cocoa powder", "Salt", "Water", "Milk", "Vanilla extract"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/8y4x5f1487603151.jpg")
puts "Created recipe: Microwave Hot Cocoa"

# Recipe 134
Recipe.create(name: "Tequila Slammer",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Mix carefully to avoid",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Tequila", "7-up"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/43uhr51551451311.jpg")
puts "Created recipe: Tequila Slammer"

# Recipe 135
Recipe.create(name: "1-900-FUK-MEUP",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Shake ingredients in a mixing tin filled with ice cubes. Strain into a rocks glass." ,
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Absolut Kurant", "Grand Marnier", "Chambord raspberry liqueur", "Midori melon liqueur", "Malibu rum", "Amaretto", "Cranberry juice", "Pineapple juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/uxywyw1468877224.jpg")
puts "Created recipe: 1-900-FUK-MEUP"

# Recipe 136
Recipe.create(name: "Hunter's Moon",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Put the Bombay Sapphire, Martini Bianco, sugar syrup & blackberries in a cocktail shaker with lots of ice and shake vigorously before pouring into a balloon glass, topping up with lemonade and garnishing with a wedge of orange." ,
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: [ "Vermouth", "Maraschino Cherry", "Sugar Syrup", "Lemonade", "Blackberries"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/t0iugg1509556712.jpg")
puts "Created recipe: Hunter's Moon"

# Recipe 137
Recipe.create(name: "Gin & Tonic",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour the gin and the tonic water into a highball glass almost filled with ice cubes. Stir well. Garnish with the lime wedge.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Gin", "Tonic water", "Lime"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/z0omyp1582480573.jpg")
puts "Created recipe: Gin & Tonic"

# Recipe 138
Recipe.create(name: "French Martini",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour all ingredients into shaker with ice cubes. Shake well and strain into a chilled cocktail glass. Squeeze oil from lemon peel onto the drink." ,
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Raspberry Liqueur", "Pineapple Juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/clth721504373134.jpg")
puts "Created recipe: French Martini"

# Recipe 139
Recipe.create(name: "Casino",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass. Garnish with a lemon twist and a maraschino cherry. Serve without a straw." ,
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Maraschino liqueur", "Lemon juice", "Orange bitters", "Cherry"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/1mvjxg1504348579.jpg")
puts "Created recipe: Casino"

# Recipe 140
Recipe.create(name: "Kyoto",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "In a cocktail shaker, muddle the mint leaves. Add ice and the gin, lime juice and passion fruit nectar and shake well. Strain into an ice-filled rocks glass and garnish with the mint sprig.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Mint leaves", "Ice", "Gin", "Lime juice", "Passion fruit juice"],
              image_url: "https://static.onecms.io/wp-content/uploads/sites/9/2013/12/06/2010-xl-cocktail-kyoto-no-2.jpg")
puts "Created recipe: Kyoto"

# Recipe 141
Recipe.create(name: "69 Special",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Pour 2 oz. gin. Add 4 oz. 7-up. Add Lemon Juice for flavor. If you are weak, top up glass with more 7-Up.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "7-Up", "Lemon juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vqyxqx1472669095.jpg")
puts "Created recipe: 69 Special"

# Recipe 142
Recipe.create(name: "3-Mile Long Island Iced Tea",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Fill 14oz glass with ice and alcohol. Fill 2/3 glass with cola and remainder with sweet & sour. Top with dash of bitters and lemon wedge.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Light rum", "Tequila", "Triple sec", "Vodka", "Coca-Cola", "Sweet and sour", "Bitters", "Lemon"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/rrtssw1472668972.jpg")
puts "Created recipe: 3-Mile Long Island Iced Tea"

# Recipe 143
Recipe.create(name: "The Last Word",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Shake with ice and strain into a cocktail glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Green Chartreuse", "Maraschino Liqueur", "Lime Juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/91oule1513702624.jpg")
puts "Created recipe: The Last Word"

# Recipe 144
Recipe.create(name: "Gin Sling",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Dissolve powdered sugar in mixture of water and juice of lemon. Add gin. Pour into an old-fashioned glass over ice cubes and stir. Add the twist of orange peel and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Lemon", "Powdered sugar", "Water", "Orange peel"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/8cl9sm1582581761.jpg")
puts "Created recipe: Gin Sling"

# Recipe 145
Recipe.create(name: "Amaretto Rose",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Pour amaretto and lime juice over ice in a collins glass. Fill with club soda and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Amaretto", "Lime juice", "Club soda"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/3jm41q1493069578.jpg")
puts "Created recipe: Amaretto Rose"

# Recipe 146
Recipe.create(name: "Raspberry Julep",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Softly muddle the mint leaves and raspberry syrup in the bottom of the cup. Add crushed ice and Bourbon to the cup and then stir. Top with more ice, garnish with a mint sprig.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Bourbon", "Raspberry syrup", "Mint"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/hyztmx1598719265.jpg")
puts "Created recipe: Raspberry Julep"

# Recipe 147
Recipe.create(name: "Jitterbug",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Wet glass, dip rim in sugar. Then add Ice. Then add everything else. It's that simple!",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Vodka", "Grenadine", "Lime juice", "Sugar", "Sugar syrup", "Soda water"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/wwqvrq1441245318.jpg")
puts "Created recipe: Jitterbug"

# Recipe 148
Recipe.create(name: "24k Nightmare",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Add over ice,shake and pour.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Goldschlager", "Jägermeister", "Rumple Minze", "151 proof rum"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yyrwty1468877498.jpg")
puts "Created recipe: 24k Nightmare"

# Recipe 149
Recipe.create(name: "Greyhound",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Add the vodka to a Collins glass filled with ice. Top with grapefruit juice and stir.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Grapefruit Juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/g5upn41513706732.jpg")
puts "Created recipe: Greyhound"

# Recipe 150
Recipe.create(name: "Paradise",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake together over ice. Strain into cocktail glass and serve chilled.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Apricot Brandy", "Orange Juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/ejozd71504351060.jpg")
puts "Created recipe: Paradise"

# Recipe 151
Recipe.create(name: "Jewel Of The Nile",
              event_type: ["Home", "Special Ocasion"],
              instruction: "In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Green Chartreuse", "Yellow Chartreuse"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/hx4nrb1504884947.jpg")
puts "Created recipe: Jewel Of The Nile"

# Recipe 152
Recipe.create(name: "The Laverstoke",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "1) Squeeze two lime wedges into a balloon glass then add the cordial, Bombay Sapphire and MARTINI Rosso Vermouth, swirl to mix. 2) Fully fill the glass with cubed ice and stir to chill. 3) Top with Fever-Tree Ginger Ale and gently stir again to combine. 4) Garnish with a snapped ginger slice and an awoken mint sprig.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Elderflower cordial", "Rosso Vermouth", "Tonic Water", "Lime", "Ginger", "Mint"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/6xfj5t1517748412.jpg")
puts "Created recipe: The Laverstoke"

# Recipe 153
Recipe.create(name: "Gin Daisy",
              event_type: ["Home", "Special Ocasion"],
              instruction: "In a shaker half-filled with ice cubes, combine the gin, lemon juice, sugar, and grenadine. Shake well. Pour into an old-fashioned glass and garnish with the cherry and the orange slice.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Lemon juice", "Sugar", "Grenadine", "Maraschino cherry", "Orange"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/z6e22f1582581155.jpg")
puts "Created recipe: Gin Daisy"

# Recipe 154
Recipe.create(name: "Stone Sour",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Shake all ingredients with ice, strain into a chilled whiskey sour glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Apricot brandy", "Orange juice", "Sweet and sour"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vruvtp1472719895.jpg")
puts "Created recipe: Stone Sour"

# Recipe 155
Recipe.create(name: "Casino Royale",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a sour glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Lemon juice", "Maraschino liqueur", "Orange bitters", "Egg yolk"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/3qpv121504366699.jpg")
puts "Created recipe: Casino Royale"

# Recipe 156
Recipe.create(name: "A True Amaretto Sour",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Rub the rim of an old fashioned glass with lemon, and dip repeatedly into granulated sugar until it has a good frosted rim. Shake a jigger of Amaretto with the juice of 1/2 a lemon. Strain into glass and add ice. Garnish with a Marachino Cherry.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Amaretto", "Lemon", "Ice", "Maraschino cherry"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/rptuxy1472669372.jpg")
puts "Created recipe: A True Amaretto Sour"

# Recipe 157
Recipe.create(name: "Lazy Coconut Paloma",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Mix the coconut liqueur (preferably tequila) with the grapefruit juice and top with soda water. Garnish with a large grapefruit slice against the inside of the glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Coconut Liqueur", "Grapefruit Juice", "Soda Water"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/rytuex1598719770.jpg")
puts "Created recipe: Lazy Coconut Palma"

# Recipe 158
Recipe.create(name: "Aperol Spritz",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Put a couple of cubes of ice into 2 glasses and add a 50 ml measure of Aperol to each. Divide the prosecco between the glasses and then top up with soda, if you like.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Aperol", "Prosecco", "Soda Water"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/iloasq1587661955.jpg")
puts "Created recipe: Aperol Spritz"

# Recipe 159
Recipe.create(name: "Banana Strawberry Shake Daiquiri",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Blend all together in a blender until smooth.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Strawberries", "Banana", "Apple juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/uvypss1472720581.jpg")
puts "Created recipe: Banana Strawberry Shake Daiquiri"

# Recipe 160
Recipe.create(name: "Bahama Mama",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Add 2 parts club soda or more or less to taste. Mix it all together and pour over a bunch of ice. Drink with a straw.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Rum", "Dark Rum", "Banana liqueur", "Grenadine", "Pineapple Juice", "Orange Juice", "Sweet and Sour"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/ejozd71504351060.jpg")
puts "Created recipe: Bahama Mama"

# Recipe 161
Recipe.create(name: "Clover Club",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Dry shake ingredients to emulsify, add ice, shake and served straight up.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Gin", "Grenadine", "Lemon", "Egg white"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/t0aja61504348715.jpg")
puts "Created recipe: Clover Club"

# Recipe 162
Recipe.create(name: "Quaker's Cocktail",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Light rum", "Brandy", "Lemon", "Raspberry syrup"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/yrqppx1478962314.jpg")
puts "Created recipe: Quaker´s Cocktail"

# Recipe 163
Recipe.create(name: "Flying Dutchman",
              event_type: ["Home", "Special Ocasion"],
              instruction: "In an old-fashioned glass almost filled with ice cubes, combine the gin and triple sec. Stir well.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Gin", "Triple sec"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/mwko4q1582482903.jpg")
puts "Created recipe: Flying Dutchman"

# Recipe 164
Recipe.create(name: "Dragonfly",
              event_type: ["Home", "Special Ocasion"],
              instruction: "In a highball glass almost filled with ice cubes, combine the gin and ginger ale. Stir well. Garnish with the lime wedge.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Ginger ale", "Lime"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/uc63bh1582483589.jpg")
puts "Created recipe: Dragonfly"

# Recipe 165
Recipe.create(name: "Amaretto & Cream",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake well with cracked ice, strain contents into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Amaretto", "Light cream"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/dj8n0r1504375018.jpg")
puts "Created recipe: Amaretto & Cream"

# Recipe 166
Recipe.create(name: "Strawberry Lemonade",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Throw everything into a blender and mix until fairly smooth. Serve over ice.",
              alcohol: "Non-alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Lemon", "Sugar", "Strawberries", "Water"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/spvvxp1468924425.jpg")
puts "Created recipe: Strawberry Lemonade"

# Recipe 167
Recipe.create(name: "Rum Cooler",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Blend all together in a blender until smooth.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Rum", "Lemon-lime soda", "Lemon"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/2hgwsb1504888674.jpg")
puts "Created recipe: Rum Cooler"

# Recipe 168
Recipe.create(name: "Mai Tai",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all ingredients with ice. Strain into glass. Garnish and serve with straw.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Light rum", "Orgeat syrup", "Triple sec", "Sweet and sour", "Cherry"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/twyrrp1439907470.jpg")
puts "Created recipe: Mai Tai"

# Recipe 169
Recipe.create(name: "Lone Tree Cocktail",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Stir ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Sweet Vermouth", "Gin"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/tsxpty1468923417.jpg")
puts "Created recipe: Lone Tree Cokctail"

# Recipe 170
Recipe.create(name: "Clove Cocktail",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Stir all ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Sweet Vermouth", "Sloe gin", "Wine"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/qxvtst1461867579.jpg")
puts "Created recipe: Clove Cocktail"

# Recipe 171
Recipe.create(name: "Bounty Hunter",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Add the spirits into a shaker as well as the pineapple juice, strain into a Margarita glass. Top with Prosecco and garnish with Blueberries.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Rum", "Coconut Liqueur", "Blueberries", "Pineapple Juice", "Prosecco"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/t8bgxl1596018175.jpg")
puts "Created recipe: Bounty Hunter"

# Recipe 172
Recipe.create(name: "Moscow Mule",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Stir all ingredients with ice, strain into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Lime juice", "Ginger ale"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/3pylqc1504370988.jpg")
puts "Created recipe: Moscow Mule"

# Recipe 173
Recipe.create(name: "Avalon",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Fill a tall glass with ice. Layer the Finlandia Vodka, lemon and apple juices, Pisang Ambon, and top up with lemonade. Stir slightly and garnish with a spiralled cucumber skin and a red cherry. The cucumber provides zest and looks attractive. This drink, created by Timo Haimi, took first prize in the 1991 Finlandia Vodka Long Drink Competition.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Pisang Ambon", "Apple juice", "Lemon juice", "Lemonade"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/3k9qic1493068931.jpg")
puts "Created recipe: Avalon"

# Recipe 174
Recipe.create(name: "Sea Breeze",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Build all ingredients in a highball glass filled with ice. Garnish with lime wedge.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Vodka", "Cranberry juice", "Grapefruit juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/7rfuks1504371562.jpg")
puts "Created recipe: Sea Breeze"

# Recipe 175
Recipe.create(name: "Bombay Cassis",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Add the Bombay Sapphire, Crème de Cassis and lime juice to a balloon glass and swirl well to mix. Fill the glass with good quality cubed ice. Top up with chilled and freshly opened Fever-Tree Ginger Beer. Gently stir to combine, top with a gently squeezed lime wedge and finish with a fresh ginger slice.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Gin", "Creme de Cassis", "Fresh Lime Juice", "Ginger beer", "Lime", "Ginger"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/h1e0e51510136907.jpg")
puts "Created recipe: Bombay Cassis"

# Recipe 176
Recipe.create(name: "Cosmopolitan",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Add all ingredients into cocktail shaker filled with ice. Shake well and double strain into large cocktail glass. Garnish with lime wheel.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Absolut Citron", "Lime juice", "Cointreau", "Cranberry juice"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/kpsajh1504368362.jpg")
puts "Created recipe: Cosmopolitan"

# Recipe 177
Recipe.create(name: "Frisco Sour",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Shake all ingredients (except slices of lemon and lime) with ice and strain into a whiskey sour glass. Decorate with the slices of lemon and lime and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Blended whiskey", "Benedictine", "Lemon", "Lime", "Lemon", "Lime"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/acuvjz1582482022.jpg")
puts "Created recipe: Frisco Sour"

# Recipe 178
Recipe.create(name: "Adonis Cocktail",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Stir all ingredients with ice, strain contents into a cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Fruity"],
              ingredient: ["Sweet Vermouth", "Sherry", "Orange bitters"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/xrvruq1472812030.jpg")
puts "Created recipe: Adonis Cocktail"

# Recipe 179
Recipe.create(name: "Ace",
              event_type: ["Home", "Business", "Special Ocasion"],
              instruction: "Shake all the ingredients in a cocktail shaker and ice then strain in a cold glass.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Gin", "Grenadine", "Heavy cream", "Milk", "Egg White"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/l3cd7f1504818306.jpg")
puts "Created recipe: Ace"

# Recipe 180
Recipe.create(name: "Orgasm",
              event_type: ["Home", "Special Ocasion"],
              instruction: "Shake all ingredients with ice, strain into a chilled cocktail glass, and serve.",
              alcohol: "Alcoholic",
              cocktail_category: ["Sour"],
              ingredient: ["Creme de Cacao", "Amaretto", "Triple sec", "Vodka", "Light cream"],
              image_url: "https://www.thecocktaildb.com/images/media/drink/vr6kle1504886114.jpg")
puts "Created recipe: Orgasm"

sleep 1

puts "All set, DB created!"
