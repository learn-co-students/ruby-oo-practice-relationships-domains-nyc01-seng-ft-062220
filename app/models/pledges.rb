class Pledge

    attr_accessor :amount
    @@all = []

    def initialize(amount)
        @amount = amount.to_i
        @@all << self
    end

    def self.all
        @@all
    end

    def user #which user pledged it
        User.all.select{|user_object| user_object.pledge_amount == self.amount}
    end
    
    def project #which project
        user.map{|user| user.backed}
    end


end


#problems when trying to scale:
#doesn't account for 2 users pledging the same amount to one project
