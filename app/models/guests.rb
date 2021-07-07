

class Guest

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def trips
    Trip.all.select do |item|
      item.guest == self
    end
  end

  def listings
    array = trips.each do |item|
      item.listing
    end
    array.uniq
  end

  def self.find_all_by_name(name)
    @@all.select {|item|item.name == name}
  end

  #this is overcoded.  Needs to be refactored.
  def self.pro_traveller
    array = []
    Trip.all.map do |item|
      guest = item.guest.name
      array.push(guest)
    end
    final_array = []
    array.each do |item|
      if array.count(item) > 3
        final_array.push(item)
      end
    end
    final_array.uniq
  end

  def self.all
    @@all
  end

end


