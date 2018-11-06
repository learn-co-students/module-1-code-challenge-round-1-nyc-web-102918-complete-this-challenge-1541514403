class Restaurant
  attr_accessor :name, :customer, :review

  @@all = []
  def initialize(name)
    @name = name
    @all << self
  end


  def self.all
    @@all

  end

  def self.find_by_name(name)
    self.all.find do|restaurant| restaurant.name == name
    restaunrat
  end

  end

  def reviews
  # first I ask for all the r
  end 

  # - `Restaurant#reviews`
  #   - returns an array of all reviews for that restaurant
  # - `Restaurant#average_star_rating`
  #   - returns the average star rating for a restaurant based on its reviews


end
