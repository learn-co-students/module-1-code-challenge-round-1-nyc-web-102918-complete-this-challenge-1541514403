class Review
  attr_reader :customer, :restaurant, :rating
  attr_accessor :review_content

  @@all = []


def initialize(customer, restaurant, rating, review_content)
  @customer = customer
  @restaurant = restaurant
  @rating = rating
  @review_content = review_content
  @all << self
end

  def rating(customer_rate)
    if customer_rate > 5
      customer_rate = 5
    else if customer_rate < 1
      customer_rate = 1
    else
      customer_rate.to_i
  end

  def self.all
    @@all
  end

end
