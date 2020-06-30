#a Dessert belongs to a Bakery
#a Dessert has many Ingredients

class Desserts

    attr_accessor :name
    attr_reader :bakery_inst, :ingr_inst

    @@all = []

    def initialize(name, ingr_inst, bakery_inst)
        @name = name
        @ingr_inst = ingr_inst
        @bakery_inst = bakery_inst
        @@all << self
    end

    def ingredients
        #should return an array of ingredients objects for the dessert
      
    end

    def bakery
        #should return the bakery object for the dessert
        # Desserts.all.map {|dessert_inst| p "bob" if dessert_inst == self }
    end 

    def ingredients
        Ingredients.calorie_count
    end


    def calories
        #should return a float totaling all the calories for all the ingredients included in that dessert
        count = 0 
        all_ingr = Desserts.all.map {|dessert| dessert.ingr_inst if dessert == self}.compact
        Ingredients.all.each_with_index do |ingredient, i| 
            all_ingr.each_with_index do |dessert_ingr, i| 
                puts dessert_ingr == Ingredients.all[i]
            end
        end
    end

    # pp ingredient.calorie_count if

    def self.all
        #should return an array of all dessert objects
        @@all
    end

end