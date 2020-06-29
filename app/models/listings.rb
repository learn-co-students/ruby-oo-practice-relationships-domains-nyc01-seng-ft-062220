class Listing
    
    attr_accessor :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        Trips.all.select{|trip_data| trip_data.listing == self}
    end

    def self.find_all_by_city(city)
        self.all.select{|listing| listing.city == city}
    end

    def trips
        Trip.all.select{|trip| trip.listing == self}
    end

    def trip_count
        trips.count
    end

    def self.most_popular
        most_trips = 1
        self.all.each do |listing| 
            if listing.trip_count > most_trips
                most_trips = listing.trip_count
            end
            most_trips
        end
        self.all.find{|listing| listing.trip_count == most_trips}
        # bindnig.pr
    end

end




