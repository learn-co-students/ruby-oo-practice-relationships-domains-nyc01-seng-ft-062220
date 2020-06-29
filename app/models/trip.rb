class Trip

    attr_reader :guest
    attr_accessor :listing
    @@all = []
    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end

    def self.all
        @@all
    end

end