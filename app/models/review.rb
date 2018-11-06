class Review
  @@all = []

  def self.all
		@@all
  end

  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  def initialize(customer, restaurant, rating, content)
  	@customer = customer
  	@restaurant = restaurant
  	@rating = rating
  	@content = content

  	@@all << self
  end
end

