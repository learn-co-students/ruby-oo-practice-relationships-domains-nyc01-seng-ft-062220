
require_relative 'listing'
require_relative 'guests'
require_relative 'trips'

require 'pry'


guest1 = Guest.new('Brian')
guest2 = Guest.new('Susan')
guest3 = Guest.new('James')
guest4 = Guest.new('Todd')
guest5 = Guest.new('margo')
guest6 = Guest.new('Jack')
guest7 = Guest.new('Tendies')
guest8 = Guest.new('Terry')

listing1 = Listing.new('San Francisco')
listing2 = Listing.new('San Francisco')
listing3 = Listing.new('San Francisco')

listing4 = Listing.new('New York')
listing5 = Listing.new('New York')
listing6 = Listing.new('New York')

listing7 = Listing.new('New York')
listing8 = Listing.new('Chicago')


trip1 = Trip.new(guest1, listing1)
trip2 = Trip.new(guest1, listing2)
trip3 = Trip.new(guest1, listing3)
trip4 = Trip.new(guest1, listing4)
trip5 = Trip.new(guest2, listing5)
trip6 = Trip.new(guest2, listing6)
trip7 = Trip.new(guest2, listing7)
trip8 = Trip.new(guest2, listing8)

#puts Trip.listing
puts Guest.pro_traveller