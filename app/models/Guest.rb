class Guest
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_trip(listing)
        Trip.new(self, listing)
    end

    def trips
        Trip.all.select {|id| id.guest_name == self}
    end

    def trip_count
        trips.size
    end

    def self.pro_traveller
        @@all.select {|id| id.trip_count > 1}
    end

    def self.find_all_by_name(guest)
        @@all.select {|id| id.name == guest}
    end

end
