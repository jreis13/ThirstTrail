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

puts "Destroying ingredients"
Ingredient.destroy_all

puts "Destroying recipes"
Recipe.destroy_all

puts "Destroying recipes ingredients"
RecipeIngredient.destroy_all

puts "Collecting ingredients"

url = "https://www.thecocktaildb.com/api/json/v2/9973533/list.php?i=list"
ingredients_data = JSON.parse(RestClient.get(url))

ingredients_data['drinks'].each do |ingredient|
  Ingredient.new(name: ingredient["strIngredient1"]).save
end

puts "#{Ingredient.count} created."

url = "https://www.thecocktaildb.com/api/json/v2/9973533/recent.php"
recipes_data = JSON.parse(RestClient.get(url))

recipes_data['drinks'].each do |drink|
  recipe = Recipe.new(
    name: drink["strDrink"],
    instruction: drink["strInstructions"],
    image_url: drink["strDrinkThumb"]
  )
  recipe.save

  i = 1

  15.times do
    ingredient = drink["strIngredient#{i}"]
    if ingredient.nil? || ingredient == ""
      break
    end

    measure = drink["strMeasure#{i}"]
    RecipeIngredient.new(recipe: recipe, ingredient: Ingredient.find_by_name(ingredient), measure: measure)
    i += 1
  end
end

puts "All set. #{Recipe.count} recipes created"

# random drink added here
# url = "www.thecocktaildb.com/api/json/v1/1/random.php"
# random_cocktail = JSON.parse(RestClient.get(url))
