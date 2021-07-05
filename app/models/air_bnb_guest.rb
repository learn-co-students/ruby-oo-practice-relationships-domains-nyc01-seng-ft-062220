# create files for your ruby classes in this directory
class Guest
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end   



    def trips
        Trip.all.select{|i| i.guest == self}
    end

    def trips_by_status(status) #will most likely be used as a helper method
        self.trips.select{|i| i.status == "complete"}
    end



    def listings
        self.trips_by_status("complete").map{|i| i.listing}
    end

    def trip_count #my rationale is to count trips that have been done vs trips scheduled. just wanted to apply the logic of real life and having trips store all trips made by people.
        self.trips_by_status("complete").count
    end




    def self.all
      @@all
    end

    def self.pro_traveller
        pro = {}
        self.all.each{|i| pro[i] = i.trip_count}
        pro.select{|key,value| value >1}
    end

    def self.find_all_by_name(name)
        self.all.select{|i| i.name == name}
    end

end
