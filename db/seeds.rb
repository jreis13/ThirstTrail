# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Deleting DB...'

Recipe.delete_all
Ingredient.delete_all
RecipeIngredient.delete_all

puts 'DB successfully destroyed.'

puts 'Generating new DB...'

ingredient1 = Ingredient.create(name: "Tabasco Sauce")
ingredient2 = Ingredient.create(name: "Salt")
ingredient3 = Ingredient.create(name: "Strawberries")
ingredient4 = Ingredient.create(name: "Lime juice")

recipe1 = Recipe.create(name: "Bloody Mary", instruction: "aaaa")
recipe2 = Recipe.create(name: "Margarita", instruction: "aaaa")
recipe3 = Recipe.create(name: "Strawberry Daiquiri", instruction: "aaaa")
recipe4 = Recipe.create(name: "Mojito", instruction: "aaaa")

measure1 = RecipeIngredient.create(recipe: recipe1, ingredient: ingredient1, measure: "1 ts")
measure2 = RecipeIngredient.create(recipe: recipe2, ingredient: ingredient2, measure: "1 ts")
measure3 = RecipeIngredient.create(recipe: recipe3, ingredient: ingredient3, measure: "4 pcs")
measure4 = RecipeIngredient.create(recipe: recipe4, ingredient: ingredient4, measure: "2 tbs")


puts 'All set, DB successfully created!'
