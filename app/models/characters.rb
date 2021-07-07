class Character

    attr_accessor :name, :actor, :movie, :show
    @@all = []
    def initialize(name, actor, movie=nil, show=nil)
        @name = name
        @actor = actor
        @movie = movie
        @show = show
        @@all << self
    end

    def self.all
        @@all
    end

    def self.on_the_big_screen
        Character.all
    end



end