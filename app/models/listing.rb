
class Listing

  attr_reader :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    Trip.all.listing.select
  end

  def trips
    array = guests.map do |element|
      element
    end
    array
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city_name)
    @@all.select {|item| item.city == city_name}
  end

  def self.most_popular
    array = @@all.map do |item|
      item.city
    end
    array.max_by {|item| array.count(item)}
  end
end
