class Recipe
  @@all = []

  def initialize(recipe_name)
    @recipe_name = recipe_name
    @@all << self
  end

  def self.all# should return all of the recipe instances
    @@all
  end

  def recipes_recipe_cards# returns all of recipe cards for this recipe
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end

  def users# should return the user instances who have recipe cards with this recipe
    recipes_recipe_cards.map do |recipecard|
      recipecard.user
    end
  end

  def self.most_popular# return recipe instance with highest number of users (the recipe that has the most recipe cards)
    #all
    count = 0
    recipe_most_popular = ""

    all.each do |recipe|
      if count < recipe.users.count
        count = recipe.users.count
        recipe_most_popular = recipe
      end
    end
    recipe_most_popular
  end

  def recipes_recipe_ingredient# returns all of recipe ingredients for this recipe
    RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
    end
  end

  def ingredients# should return all of the ingredients in this recipe
    recipes_recipe_ingredient.map do |recipeingredient|
      recipeingredient.ingredient
    end
  end

  def add_ingredients(ingredients)
    # should take an array of ingredient instances as an argument
    # associate each of those ingredients with this recipe
    counter = 0
    ingredients.length.times do
      RecipeIngredient.new(self, ingredients[counter])
      counter += 1
    end
  end

  def allergens# should return all of the ingredients in this recipe that are allergens
    allergenic_ingredients = []
    Allergen.all.each do |allergen|
      ingredients.each do |ingredient|
          if allergen.ingredient == ingredient
            allergenic_ingredients << ingredient
          end
      end
    end
    allergenic_ingredients.uniq
  end
end
