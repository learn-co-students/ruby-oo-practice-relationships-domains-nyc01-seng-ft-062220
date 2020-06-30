class Trip
    
    attr_reader :prop_inst, :guest_inst

    @@all = []

    def initialize(prop_inst, guest_inst)
        @prop_inst = prop_inst
        @guest_inst = guest_inst
        @@all << self
    end


    def listing
        #returns the listing object for the trip
        Trip.all.map {|trip_inst| trip_inst.prop_instT if trip_inst == self}.compact
    end


    def guest
        #returns the guest object for the trip
        Trip.all.map {|trip_inst| trip_inst.guest_inst if trip_inst == self}.compact
    end

    def self.all
        #returns an array of all trips
        @@all
    end

end