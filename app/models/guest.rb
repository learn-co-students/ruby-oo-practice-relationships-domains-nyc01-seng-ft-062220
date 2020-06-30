class Guest

    attr_accessor :name

    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

    def listings
        #returns an array of all listings a guest has stayed at
        Trip.all.map {|trip_inst| trip_inst.prop_inst if trip_inst.guest_inst == self}.compact
    end

    def trips
        #returns an array of all trips a guest has made
        Trip.all.map {|trip_inst| trip_inst if trip_inst.guest_inst == self}.compact
    end

    def trip_count
        #returns the number of trips a guest has taken
        hash = Hash.new(0)
        Trip.all.each do |trip_inst| 
            if hash[trip_inst.guest_inst] && trip_inst.guest_inst == self
                hash[trip_inst.guest_inst] += 1
            else
                hash[trip_inst.guest_inst] = 0
            end
        end
        hash.sort_by {|k,v| v}.last[1]
    end

    def self.all
        #returns an array of all guests
        @@all
    end

    def self.pro_traveller
        #returns an array of all guests who have made over 1 trip
        hash = Hash.new(0)
        Trip.all.each do |trip_inst| 
            if hash[trip_inst.guest_inst]
                hash[trip_inst.guest_inst] += 1
            else
                hash[trip_inst.guest_inst] = 0
            end
        end
        hash.select {|k,v| v > 1}
    end


    def self.find_all_by_name(name)
        #takes an argument of a name (as a string), returns the all guests with that name
        Guest.all.map {|guest| guest if guest.name == name}.compact
    end

end