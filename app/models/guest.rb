# create files for your ruby classes in this directory
class Guests

    attr_reader :name 
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trips| trips.guest == self}
    end
    
    def trip_count
        self.trips.count
    end

    def listings
        self.trips.all.map {|trips| trips.listing}
    end

    def pro_traveller
        self.all.select {|guests| guests.trips.length >1}
    end

    def self.find_all_by_name(name)
        self.all.select {|guests| guests.name == name}
    end

end

 #### Guest

#- #listings
#- returns an array of all listings a guest has stayed at
#- #trips
#- returns an array of all trips a guest has made
#- #trip_count
#- returns the number of trips a guest has taken
#- .all
#- returns an array of all guests
#- .pro_traveller
#- returns an array of all guests who have made over 1 trip
#- .find_all_by_name(name)
#- takes an argument of a name (as a string), returns the all guests with that name