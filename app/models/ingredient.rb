require 'pry'
class Ingredient

    attr_accessor :name, :dessert, :calorie_count
    @@all = []

    def initialize(name, dessert, calorie_count) 
        @name = name 
        @calorie_count = calorie_count
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all 
    end 

    def bakery 
        self.dessert.bakery
    end

    def desserts
        Dessert.all.select{|dessert| dessert.ingredients.include?(self)}
    end

    def self.find_all_by_name(ingredient)
        self.all.select{|ingredient| ingredient.name == ingredient}
        binding.pry
    end

end