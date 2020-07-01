require 'pry'

class Bakery

    attr_accessor :name
    @@all = []

    def initialize(name) 
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts 
        Dessert.all.select{ |dessert| dessert.bakery == self }
    end

    def dessert_name
        self.desserts.map{|dessert_object| dessert_object.name}
    end

    def ingredients 
        self.desserts.map { |dessert| dessert.ingredients }
    end

    def shopping_list 
        self.ingredients.flatten.map{ |ingredient| ingredient.name }.uniq
    end

    def average_calories
        list_of_cal_counts = self.ingredients.flatten.map{|item| item.calorie_count}
        list_of_cal_counts.sum.to_f/list_of_cal_counts.count
    end
    

end