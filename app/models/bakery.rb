# a Bakery has many Desserts


class Bakery

    attr_accessor :bakery_name

    @@all = []

    def initialize(bakery_name)
        @bakery_name = bakery_name 
        @@all << self 
    end

    def ingredients
        #should return an array of ingredient objects for the bakery's desserts
        Desserts.all.map {|dessert| dessert.ingr_inst if dessert.bakery_inst == self}.compact
    end

    def desserts
        #should return an array of dessert objects the bakery makes
        Desserts.all.map {|dessert| dessert if dessert.bakery_inst == self}.compact #THIS ENSURES A SINGLE SOURCE OF TRUTH ******
    end

    def average_calories
        #should return a float totaling the average number of calories for the desserts sold at this bakery
        count = 0 
        Desserts.all.map {|dessert| dessert.ingr_inst if dessert.bakery_inst == self}.compact
    end

    def self.all
        #should return an array of all bakeries
        @@all
    end

    def shopping_list
        #should return a string of names for ingredients for the bakery

    end

    def new_dessert(dessert, ingredients)
        Desserts.new(dessert, ingredients, self)
    end


end