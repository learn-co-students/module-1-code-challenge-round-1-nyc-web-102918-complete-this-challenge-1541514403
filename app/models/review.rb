class Review
attr_reader :customer, :restaurant, :rating
attr_accessor :content
@@all = []
def initialize(customer, restaurant, rating, content)
  @customer = customer
  @restaurant = restaurant
  @rating = rating
  @content = content
  @@all << self
end
def rating=(num)
  num == (1..5)
  @rating = num
end
def self.all
  @@all
end


  # - `Review.all`
  #   - returns all of the reviews
  # - `Review#customer`
  #   - returns the customer object for that given review
  #   - Once a review is created, I should not be able to change the author
  # - `Review#restaurant`
  #   - returns the restaurant object for that given review
  #   - Once a review is created, I should not be able to change the restaurant
  # - `Review#rating`
  #   - returns the star rating for a restaurant. This should be an integer from 1-5
  # - `Review#content`
  #   - returns the review content, as a string, for a particular review
end
