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

# puts "Destroying recipes"
# Recipe.destroy_all

# puts "Destroying recipes ingredients"
# RecipeIngredient.destroy_all

# puts "Collecting ingredients"

# url = "https://www.thecocktaildb.com/api/json/v2/9973533/list.php?i=list"
# ingredients_data = JSON.parse(RestClient.get(url))

# ingredients_data['drinks'].each do |ingredient|
  # Ingredient.new(name: ingredient["strIngredient1"]).save
# end

# puts "#{Ingredient.count} created."

 url = "https://www.thecocktaildb.com/api/json/v2/9973533/recent.php"
 recipes_data = JSON.parse(RestClient.get(url))

 recipes_data['drinks'].each do |drink|
   recipe = Recipe.new(
   # name: drink["strDrink"],
    # instruction: drink["strInstructions"]
     image_url: drink["strDrinkThumb"]
   )
   recipe.save

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
 ingredient: ["Absolut Vodka", "Cranberry juice", "Ginger ale", "Ice"])

recipe2 = Recipe.create(name: "Strawberry Margarita",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Rub rim of cocktail glass with lemon juice and dip rim in salt. Shake schnapps, tequila, triple sec, lemon juice, and strawberries with ice, strain into the salt-rimmed glass, and serve.",
 alcohol: "Alcoholic",
 cocktail_category: ["Sour", "Salty"],
 ingredient: ["Strawberry schnapps", "Tequila", "Triple sec", "Lemon juice", "Strawberries", "Salt"])

recipe3 = Recipe.create(name: "Bora Bora",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Prepare in a blender or shaker, serve in a highball glass on the rocks. Garnish with 1 slice of pineapple and one cherry.",
 alcohol: "Non alcoholic",
 cocktail_category: ["Fruity"],
 ingredient: ["Pineapple juice", "Passion fruit juice", "Lemon juice", "Grenadine"])

 recipe4 = Recipe.create(name: "Tequila Surprise",
 event_type: ["Home", "Business", "Special Ocasion"],
 instruction: "Fill shot glass with Tequila. Add drops of Tobasco sauce.",
 alcohol: "Alcoholic",
 cocktail_category: ["Spicy"],
 ingredient: ["Tequila", "Tabasco sauce"])

 recipe5 = Recipe.create(name: "Horse's Neck",
 event_type: ["Home", "Special Ocasion"],
 instruction: "Pour brandy and ginger ale directly into highball glass with ice cubes. Stir gently. Garnish with lemon zest. If desired, add dashes of Angostura Bitter.",
 alcohol: "Alcoholic",
 cocktail_category: ["Sour"],
 ingredient: ["Lemon peel", "Brandy", "Ginger ale", "Bitters"])
