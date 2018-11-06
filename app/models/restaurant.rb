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

  def self.find_by_name(name)
    Review.all.find {|review| review.restaurant.name == name}
  end

  def customers
    restaurant_customers = Review.all.map {|review| review.customer }
    restaurant_customers.uniq
  end

  def reviews
    restaurant_reviews = Review.all.map {|review| review.content}
  end

  def average_star_rating
    restaurant_rating = Review.all.map {|review| review.rating}
    restaurant_rating.inject{ |sum, el| sum + el }.to_f / restaurant_rating.size
  end

  def longest_review
    longest_review = Review.all.map {|review| review.content}
    longest_review.max_by(&:length)
  end

end
