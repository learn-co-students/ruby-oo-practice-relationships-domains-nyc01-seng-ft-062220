#a Dessert has many Ingredients
#an Ingredient can be used in many Desserts 
    #every Ingredient has a calorie count

class Ingredients

    attr_accessor :name, :calorie_count

    @@all = []

    def initialize(name, calorie_count)
        @name = name   
        @calorie_count = calorie_count     
        @@all << self
    end

    def dessert
        #should return an array of all dessert objects that use this ingredient
        Desserts.all.map {|dessert| dessert if dessert.ingr_inst == self}
    end

    def bakeries
        #should return the bakery objects for the bakeries that use that ingredient

    end

    def self.all
        #should return an array of all ingredients
        @@all
    end

    def self.find_all_by_name(ingredient)
        #should take a string argument and return an array of all ingredients that include that string in their name

    end

    def self.find_all_by_name(ingredient) 
        #should take a string argument and return an array of all ingredients that include that string in their name
        #might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
        #make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')

    end


end