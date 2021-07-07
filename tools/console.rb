require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# g1 = Guest.new("Sam")
# g2 = Guest.new("John")

# l1 = Listing.new("Brooklyn")
# l2 = Listing.new("Seattle")
# l3 = Listing.new("Shanghai")

# t1 = Trip.new(g1, l1)
# t2 = Trip.new(g1, l2)
# t3 = Trip.new(g2, l3)
# t4 = Trip.new(g1, l2)

b1 = Bakery.new("Sams Bakery",)
b2 = Bakery.new("Johns Bakery")

d1 = Dessert.new("Cookie", b1)
d2 = Dessert.new("Cake", b1)
d3 = Dessert.new("Brownie", b2)
d4 = Dessert.new("Sundae", b1)

i1 = Ingredient.new("eggs", d1, 30)
i2 = Ingredient.new("milk", d2, 15)
i3 = Ingredient.new("baking soda", d1, 20)
i4 = Ingredient.new("baking soda", d2, 20)

show1 = Show.new("Marvelous Ms Maisel")
show2 = Show.new("Friends")

movie1 = Movie.new("Mean Girls")
movie2 = Movie.new("Grease")

actor1 = Actor.new("Rachel McAdams")
actor2 = Actor.new("John Travolta")
actor3 = Actor.new("Rachel Borsnahan")
actor4 = Actor.new("Jennifer Aniston")
actor5 = Actor.new("Lindsay Lohan")

character1 = Character.new("Regina George", actor1, movie=movie1)
character2 = Character.new("Cadey", actor5, movie=movie1)
character2 = Character.new("Danny Zuko", actor2, movie=movie2)
character3 = Character.new("Miriam Maisel", actor3, movie=nil,show=show1)
character4 = Character.new("Rachel", actor4, movie=nil, show=show2)


# project1 = Project.new("Project A", 100)
# project2 = Project.new("Project B", 200)
# project3 = Project.new("Project C", 300)
# project3 = Project.new("Unpopular Project", 1000)

# user1 = User.new("Sally", project1, project2, 50)
# user2 = User.new("John", project3, project2, 30)
# user3 = User.new("Rebecca", project2, project1, 40)
# user4 = User.new("Tom", nil, project1, 10)
# user5 = User.new("Tom", project1, project3, 280)
# user6 = User.new("Mr. Stingy_and_Lazy", nil, nil, nil)

# pledge1 = Pledge.new("50") 
# pledge2 = Pledge.new("30")
# pledge3 = Pledge.new("40")
# pledge4 = Pledge.new("10")
# pledge5 = Pledge.new("280")
Pry.start