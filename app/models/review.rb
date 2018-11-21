class Review
  attr_reader :customer, :restaurant, :rating
  attr_accessor :content #rating should able to be changed?

  @@all = []

def initialize(customer, restaurant, rating, content) # should use content, not review_content.
  @customer = customer
  @restaurant = restaurant
  @rating = rating # = to the rating method?

  @content = content
  @@all << self # missing @
end

  def rating(star_rating)
    if star_rating > 5
      star_rating = 5
    elsif star_rating < 1
      star_rating = 1
    else
      star_rating.to_i
  end

  def self.all
    @@all
  end

end
