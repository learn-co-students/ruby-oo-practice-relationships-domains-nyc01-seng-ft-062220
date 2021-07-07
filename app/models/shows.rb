class Show

    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select{|character| character.show == self}
        # binding.pry
    end

    def actors
        self.characters.map{|character| character.actor}
    end


end