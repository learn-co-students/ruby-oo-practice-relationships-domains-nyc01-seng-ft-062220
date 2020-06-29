class Trip
    attr_accessor :guest_name, :listing#, :city

    @@all = []
    def initialize(guest_name, listing)
        @guest_name = guest_name
        @listing = listing
        #@city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def listings
        Listing.all.select {|id| puts id.titlei
        d.title == self.listing}
    end

    def guest
        Guest.all.select {|id| id.name == self.guest_name}
    end
    
    #find trip by guest and loaction as parameters.
    
end
