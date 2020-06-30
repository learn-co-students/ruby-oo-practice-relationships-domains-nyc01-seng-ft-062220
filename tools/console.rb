require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

prop1 = Listing.new("House", "NYC")
prop2 = Listing.new("Appt", "Seattle")
prop3 = Listing.new("Cabin", "Washington")
prop4 = Listing.new("Appt", "NYC")
prop5 = Listing.new("Cabin", "Seattle")

guest1 = Guest.new("Joe")
guest2 = Guest.new("Jill")
guest3 = Guest.new("Bob")
guest4 = Guest.new("Jane")
guest5 = Guest.new("Mike")

trip1 = Trip.new(prop1, guest1)
trip2 = Trip.new(prop2, guest1)
trip3 = Trip.new(prop4, guest2)
trip4 = Trip.new(prop3, guest4)
trip5 = Trip.new(prop1, guest5)


ingredient1 = Ingredients.new("chocolate", 15)
ingredient2 = Ingredients.new("sprinkles", 3)
ingredient3 = Ingredients.new("sugar", 50)
ingredient4 = Ingredients.new("cream", 12)
ingredient5 = Ingredients.new("dough", 40)

bakery1 = Bakery.new("Bobs Cakes")
bakery2 = Bakery.new("Crazy Dougnuts")
bakery3 = Bakery.new("Cake Creations")

dessert1 = Desserts.new("chocolate mousse", Ingredients.all.sample(2), bakery1)
dessert2 = Desserts.new("cake", Ingredients.all.sample(2), bakery1)
dessert3 = Desserts.new("dougnut", Ingredients.all.sample(2), bakery1)
dessert4 = Desserts.new("crousaint", Ingredients.all.sample(2), bakery2)
dessert5 = Desserts.new("chocolate cake", Ingredients.all.sample(2), bakery3)









Pry.start
