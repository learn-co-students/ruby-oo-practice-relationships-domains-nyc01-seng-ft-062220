require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("Henry Yang")
g2 = Guest.new("Jane Plo")
g3 = Guest.new("Wseas Oera")
g4 = Guest.new("Pejerw Wasdw")
g5 = Guest.new("Wqassd Wasd")


l1 = Listing.new("Cool House", "NY")
l2 = Listing.new("Small Cottage", "Ithaca")
l3 = Listing.new("Giant Mansion", "Pocono")
l4 = Listing.new("Sunset House", "LA")
l5 = Listing.new("China Experience", "China Town")

t1 = Trip.new(g1, l1)
t2 = Trip.new(g1, l5)
t3 = Trip.new(g1, l4)
t4 = Trip.new(g1, l3)
t5 = Trip.new(g2, l1)
t6 = Trip.new(g2,l3)
t7 = Trip.new(g2,l5)
t8 = Trip.new(g4,l3)
t9 = Trip.new(g3,l2)
t10 = Trip.new(g3, l4)
t11 = Trip.new(g3, l3)
t12 = Trip.new(g5, l3)
t13 = Trip.new(g5, l4)



# g1.new_trip(l1)
# g1.new_trip(l5)
# g1.new_trip(l4)
# g1.new_trip(l3)
# g2.new_trip(l1)
# g2.new_trip(l3)
# g3.new_trip(l5)
# g3.new_trip(l3)
# g3.new_trip(l2)
# g4.new_trip(l4)
# g4.new_trip(l3)
# g5.new_trip(l3)
# g5.new_trip(l4)




Pry.start
