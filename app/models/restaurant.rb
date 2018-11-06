class Restaurant
  attr_accessor :name #this means it can't be changed 
  @@all = [] #all the restaurants are stored in this array

  def initialize(name)
    #everything in here is equal to itself
    @name = name
    @@all << self
  end

  def self.all
    #returns all restaurant instances
    @@all
  end

end
