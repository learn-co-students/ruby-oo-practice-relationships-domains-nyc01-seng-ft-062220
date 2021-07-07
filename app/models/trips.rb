class Trip

    attr_reader :guest, :listing
@@all = []
def initialize(guest, listing)
    @@all << self
    @guest = guest
    @listing = listing
end

def self.all
    @@all
end


end