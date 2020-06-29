# #### Listing

# - #guests
#   - returns an array of all guests who have stayed at a listing
# - #trips
#   - returns an array of all trips at a listing
# - #trip_count
#   - returns the number of trips that have been taken to that listing
# - .all
#   - returns an array of all listings
# - .find_all_by_city(city)
#   - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
#   - finds the listing that has had the most trips

class Listing

    attr_accessor :city
    @@all = []

    def initialize(city)
        @city = city
        self.class.all << self
    end

    def self.all
        @@all
    end

    def guests
        trips = Trip.all.select do |element|
            element.listing == self
        end
        trips.map do |element|
            element.guest
        end
    end

    def trips
        Trip.all.select do |element|
            element.listing == self
        end
    end

    def trip_count
        self.trips.length
    end

    def self.find_all_by_city(city)
        self.class.all.select do |element|
            element.city == city
        end
    end

    def self.most_popular
        # most_popular = self.class.all[0]
        # most_popular_count = self.class.all[0].trip_count
        # self.class.all.each do |element|
        #     if element.trip_count > most_popular_count
        #         most_popular = element
        #         most_popular_count == element.trip_count
        #     end
        # end

        self.class.all.max_by do |element|
            element.trip_count
        end 
    end

end