class Restaurant
  attr_reader :customer, :review
  attr_accessor :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end
  def customers
    unique_reviews = Review.all.select do |review|
      review.restaurant == self
    end
    unique_reviews.customer.uniq
  end
def self.all
  @@all
end
end
