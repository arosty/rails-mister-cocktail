require 'open-uri'
require 'json'

api_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_hash = JSON.parse(open(api_url).read)


ingredient_hash['drinks'].each do |pair|
	Ingredient.create(name: pair['strIngredient1'])
end