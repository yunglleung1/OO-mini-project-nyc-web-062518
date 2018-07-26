class Ingredient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all# should return all of the ingredient instances
    @@all
  end

  def ingredients_allergens# returns all of allergens for this ingredient
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def users# should return the user instances who have allergens with this ingredient
    ingredients_allergens.map do |allergen|
      allergen.user
    end
  end

  def self.most_common_allergen# return ingredient instance with highest number of users who are allergic to
    count = 0
    allergen_most_common = ""

    all.each do |allergen|
      if count < allergen.users.count
        count = allergen.users.count
        allergen_most_common = allergen
      end
    end
    allergen_most_common
  end

end
