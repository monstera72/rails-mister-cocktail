require 'open-uri'
require 'json'

file = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
ingredients = JSON.parse(file.read)
puts "creating ingredients"
ingredients["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
  puts "#{ingredient} created"
end
