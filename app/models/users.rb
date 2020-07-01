class User #single source of truth

    attr_accessor :name, :created, :backed, :pledge_amount

    @@all = []

    def initialize(name, created=nil, backed=nil, pledge_amount=nil)
        @name = name
        @created = created
        @backed = backed
        @pledge_amount = pledge_amount.to_i
        @@all << self
    end

    def self.all
        @@all
    end

    def self.highest_pledge
        highest_pledge = 0
        User.all.each do |user_object|
            if user_object.pledge_amount > highest_pledge
                highest_pledge = user_object.pledge_amount
            end
            highest_pledge
        end
            User.all.select {|user_object| user_object.pledge_amount == highest_pledge}
    end

    def self.multi_pledger #can't do this with my setup
        # User.all.each {|user_object| user_object}
    end

    def self.project_creator
        User.all.select{|user_object| user_object.created != nil}
    end

end
