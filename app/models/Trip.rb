class Trip
    attr_accessor :guest_name, :listing

    @@all = []
    def initialize(guest_name, listing)
        @guest_name = guest_name
        @listing = listing
        @@all << self
    end

    def self.all
        @@all
    end

    def listings
        Listing.all.select {|id| id == self.listing}
    end

    def guest
        Guest.all.select {|id| id == self.guest_name}
    end
    
end
