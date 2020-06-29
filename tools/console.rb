require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


g1 = Guest.new("Sam")
g2 = Guest.new("John")

l1 = Listing.new("Brooklyn")
l2 = Listing.new("Seattle")
l3 = Listing.new("Shanghai")

t1 = Trip.new(g1, l1)
t2 = Trip.new(g1, l2)
t3 = Trip.new(g2, l3)
t4 = Trip.new(g1, l2)


Pry.start