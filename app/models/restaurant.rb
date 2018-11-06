class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(restaurant_name)
    # given a string of restaurant name,
    # returns the first restaurant that matches
    self.all.find do |restaurant|
      restaurant.name == restaurant_name
    end
  end

  def reviews
    Review.all.select do |instance|
      instance.restaurant == self
    end
  end

  def customers
    #UNIQ list of customer WHO HAVE REVIEWED A PARTICULAR RESTAURANT
    customer_reviews = self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    #returns the average star rating for a resturant based on its reviews
    ratings = self.reviews.map do |review|
      review.rating
    end
    (ratings.sum / ratings.count)
  end

  def longest_review
    #returns the longest review content for a given restaurant
    count = 0
    contents = self.reviews.map do |review|
      review.content
    end
    contents.select do |words|
      words.size
    end.max
  end

end
