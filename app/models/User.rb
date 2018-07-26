class User
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all # should return all of the user instances
    @@all
  end

  def users_recipe_cards# returns all of recipe cards for this user
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end
  end

  def recipes# return all of the recipes this user has recipe cards for
    users_recipe_cards.map do |recipecard|
      recipecard.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)# should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    RecipeCard.new(date, rating, self, recipe)
  end

  def declare_allergen(ingredient)
    # should accept an ingredient instance as an argument, and
    #create a new allergen instance for this user and the given ingredient
    Allergen.new(self, ingredient)
  end

  def allergens
    # should return all of the ingredients this user is allergic to
    Allergen.all.map do |allergen|
      if allergen.user == self
        allergen.ingredient
      end
    end
  end

end




#-------------------------------------------------------------------------------
# - `User#top_three_recipes`
# should return the top three highest rated recipes for this user.

# - `User#most_recent_recipe`
# should return the recipe most recently added to the user's cookbook.
