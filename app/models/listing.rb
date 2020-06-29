class Listing
    
    attr_accessory :city
    @@all = []
    def initialize(city)
        @city = city
        @@all << self
    end

    def all.self
        @@all
    end

    def trips
        Trip.all.select {|trips| trips.listing == self}
    end

    def trip_count
        self.trips.count
    end

    def guests
        self.trips.all.map {|trips| trips.guest}
    end

    def self.find_all_by_city(city)
        self.all.select {|listing| listing.city == city}
    end

    def most_popular
        self.all.max {|listing| listing.trips}
    end
    
end

#### Listing

#- #guests
#  - returns an array of all guests who have stayed at a listing
#- #trips
#  - returns an array of all trips at a listing
#- #trip_count
#  - returns the number of trips that have been taken to that listing
#- .all
#  - returns an array of all listings
#- .find_all_by_city(city)
#  - takes an argument of a city name (as a string) and returns all the listings for that city
#- .most_popular
#  - finds the listing that has had the most trips