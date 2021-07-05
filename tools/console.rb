require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#these are just variables for the airbnb testing
# guest_1 = Guest.new("rebecca") #listing1,listing3
# guest_2 = Guest.new("Sean") #listing 2
# guest_3 = Guest.new("Marcus")#listing 2 & 3
# listing_1 = Listing.new("Brooklyn","22 Hemlock Street")
# listing_2 = Listing.new("Seattle","123 Fake Street")
# listing_3 = Listing.new("Brooklyn", "124 Faker Street")
# trip1= Trip.new(listing_1,guest_1,"tuesday")
# trip2= Trip.new(listing_3,guest_1,"thursday")
# trip3= Trip.new(listing_2,guest_2, "tuesday")
# trip4= Trip.new(listing_2,guest_3, "Wednesday")
# trip5= Trip.new(listing_3,guest_3,"friday")



Pry.start
