# #### Trip

# - #listing
#   - returns the listing object for the trip
# - #guest
#   - returns the guest object for the trip
# - .all
#   - returns an array of all trips

class Trip

    @@all = []
    attr_reader :listing, :guest

    def initialize(listing,guest)
        @listing = listing
        @guest = guest
        self.class.all << self
    end


    def self.all
        @@all
    end

end