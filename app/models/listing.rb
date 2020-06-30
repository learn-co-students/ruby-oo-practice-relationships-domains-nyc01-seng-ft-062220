class Listing

    attr_accessor :property, :city

    @@all = []

    def initialize(property, city)
        @property = property
        @city = city
        @@all << self
    end

    def guests
        #returns an array of all guests who have stayed at a listing
        Trip.all.map {|trip_inst| trip_inst.guest_inst if trip_inst.prop_inst == self}.compact
        # Trip.all[0].prop_inst => #<Listing:0x0000557544387228 @city="NYC", @property="House">
    end

    def trips
        #returns an array of all trips at a listing
        Trip.all.map {|trip_inst| trip_inst if trip_inst.prop_inst == self}.compact
    end

    def trip_count
        #returns the number of trips that have been taken to that listing
        Trip.all.map {|trip_inst| trip_inst if trip_inst.prop_inst == self}.compact.count
    end

    def self.all
        #returns an array of all listings
        @@all
    end

    def self.find_all_by_city(city)
        #takes an argument of a city name (as a string) and returns all the listings for that city
        Trip.all.map {|trip_inst| trip_inst.prop_inst if trip_inst.prop_inst.city == city}.compact
    end

    def self.most_popular
        #finds the listing that has had the most trips
        #ans prop1
        hash = Hash.new(0)
        Trip.all.each do |trip_inst| 
            if hash[trip_inst.prop_inst]
                hash[trip_inst.prop_inst] += 1
            else
                hash[trip_inst.prop_inst] = 0
            end
        end
        hash.sort_by {|k,v| v}.last[0]
    end


end