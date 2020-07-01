require 'pry'

class Dessert

    attr_accessor :name, :bakery
    @@all = []

    def initialize(name, bakery) 
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all 
        @@all
    end

    def ingredients 
        Ingredient.all.select{ |ingredient| ingredient.dessert == self }
    end

end