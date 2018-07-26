# RecipeIngredient is the join between an ingredient and a recipe.  This is a has-many-through relationship
# Build the following methods on the RecipeIngredient class
class RecipeIngredient
  @@all  = []
  attr_reader :recipe, :ingredient
  # return the recipe instance
  # return the ingredient instance

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  def self.all# should return all of the RecipeIngredient instances
    @@all
  end

end
