class Review

  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating.to_i
    @content = content

    if @rating < 1
      @rating = 1
    elsif @rating > 5
      @rating = 5
    end

    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

end
