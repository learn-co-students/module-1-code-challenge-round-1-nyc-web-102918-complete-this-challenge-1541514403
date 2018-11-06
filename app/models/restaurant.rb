class Restaurant
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    ratings = self.reviews.map {|review| review.rating}
    ratings.inject {|sum, rating| sum + rating}.to_f / ratings.length
  end

  def longest_review
    self.reviews.max_by {|review| review.content.length}
  end

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

end
