# create files for your ruby classes in this directory
class Trip
    attr_accessor :guest, :listing, :status, :date
    @@all = []

    def initialize(listing,guest,date)
        @guest = guest
        @listing = listing
        @status = "pending"
        @date = date
        @@all << self
    end

    

    def self.all
        @@all
    end
end
