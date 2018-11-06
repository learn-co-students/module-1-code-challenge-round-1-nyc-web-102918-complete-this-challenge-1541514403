class Review

  attr_accessor :content, :rating
  attr_reader :customer, :restaurant

  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

end
