class Movie

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
        Character.all.select{|character| character.movie == self}
    end

    def actors
        self.characters.map{|character| character.actor}
    end

    def self.most_actors 
        Movie.all.max{|movie_a, movie_b| movie_a.actors.count <=> movie_b.actors.count}
    end




end