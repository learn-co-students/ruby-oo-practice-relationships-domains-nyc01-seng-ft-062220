class Listing
    attr_accessor :title, :city
    
    @@all = []
    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        trips.map{|id| id.guest}
    end

    def trips
        Trip.all.select {|id| id.listing == self}
    end

    def trip_count
        trips.count
    end
    
    def self.find_by_city(location)
        @@all.select {|id| id.city == location}
    end

    def self.most_popular
        @@all.max_by{|id| id.trips.count}
    end


end