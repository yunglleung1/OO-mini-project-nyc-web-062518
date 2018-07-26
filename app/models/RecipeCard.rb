# A RecipeCard is the join between a user instance and a recipe instance.  This is a has-many-through relationship.
# Build the following methods on the RecipeCard class:
class RecipeCard
  @@all = []
  attr_reader :user, :recipe, :date, :rating
  # return the user to which the entry belongs
  # return the recipe to which the entry belongs
  # return the date of the entry
  # return the rating (an integer) a user has given their entry

  def initialize(date, rating, user, recipe)
    @date = date
    @rating = rating
    @user = user
    @recipe = recipe
    @@all << self
  end

  def self.all# return all of the RecipeCard instances
    @@all
  end

end
