require_relative '../config/environment.rb'

jess = User.new("Jessica")
ralph = User.new("Ralph")
yung = User.new("Yung")
terry = User.new("Terry")

recipe1 = Recipe.new("Pizza")
recipe2 = Recipe.new("Salad")
recipe3 = Recipe.new("Hamburger")
recipe4 = Recipe.new("Cheesesteak")

rc1 = RecipeCard.new("Day 1", 10, jess, recipe1)
rc2 = RecipeCard.new("Day 1", 3, jess, recipe2)
rc3 = RecipeCard.new("Day 2", 2, ralph, recipe2)
rc4 = RecipeCard.new("Day 3", 10, yung, recipe3)
rc5 = RecipeCard.new("Day 4", 8, terry, recipe4)

ingred1 = Ingredient.new("cheese")
ingred2 = Ingredient.new("tomato sauce")
ingred3 = Ingredient.new("dough")
ingred4 = Ingredient.new("greens")
ingred5 = Ingredient.new("beef")
ingred6 = Ingredient.new("bun")
ingred7 = Ingredient.new("steak")

recip_ingred1 = RecipeIngredient.new(recipe1, ingred1)
recip_ingred2 = RecipeIngredient.new(recipe1, ingred2)
recip_ingred3 = RecipeIngredient.new(recipe1, ingred3)

recip_ingred4 = RecipeIngredient.new(recipe2, ingred4)

recip_ingred5 = RecipeIngredient.new(recipe3, ingred5)
recip_ingred6 = RecipeIngredient.new(recipe3, ingred6)

recip_ingred5 = RecipeIngredient.new(recipe4, ingred1)
recip_ingred6 = RecipeIngredient.new(recipe4, ingred6)
recip_ingred7 = RecipeIngredient.new(recipe4, ingred7)

allergen1 = Allergen.new(terry, ingred3)
allergen2 = Allergen.new(terry, ingred4)
allergen3 = Allergen.new(ralph, ingred3)

binding.pry
