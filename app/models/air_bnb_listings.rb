# create files for your ruby classes in this directory
class Listing
    attr_accessor :city ,:house
    @@all = []

    def initialize(city,house)
        @city = city
        @house = house
        @@all << self
    end

    def  trips
        Trip.all.select{|i| i.listing == self}
    end

    def trips_by_status(status) #will most likely be used as a helper method
        self.trips.select {|i| i.status == status}
    end

    def guests #logic was i wanted to go thru guests who have successfully stayed at the listing. Trips would hold pending trips too
        self.trips_by_status("complete").map{|i| i.guest}
    end

    def trip_count #my rationale is to count trips that have been done vs trips scheduled. just wanted to apply the logic of real life and having trips store all trips made by people.
        self.trips_by_status("complete").count
    end

    def complete_trip(trip)#just made this up to change the status. figured the listing would decide they can mark a trip completed
        if self.trips.include?(trip)
        trip.status="complete"
        end

    end




    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select{|i| i.city == city}
    end

    def self.most_popular
        popular = {}
        self.all.each{|i| popular[i] = i.trip_count}
        popular.max_by{|key,value| value}
    end

    




end   