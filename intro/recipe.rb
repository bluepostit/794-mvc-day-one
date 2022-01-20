class Recipe
  attr_reader :name, :ingredients

  def initialize(name)
    @name = name
    @ingredients = []
  end

  def add_ingredient(ingredient)
    @ingredients << ingredient
  end
end


pancakes = Recipe.new('pancakes')
pancakes.add_ingredient('flour')
pancakes.add_ingredient('water')
pancakes.add_ingredient('eggs')

puts pancakes.name
pancakes.ingredients.each do |ingredient|
  puts "- #{ingredient}"
end

souffle = Recipe.new('souffle')
souffle.add_ingredient('chocolate')
souffle.add_ingredient('flour')
souffle.add_ingredient('milk')
