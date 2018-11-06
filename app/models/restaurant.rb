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
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers # find all cust. who've written reviews
    my_customers = self.reviews.map do |review|
      review.customer
    end
    my_customers.uniq
  end

  def reviews # gather all reviews for specific rest.
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating # calc average rating
    number_of_ratings = self.reviews.length
    total_rating = 0
    self.reviews.map do |review|
      total_rating += review.rating
    end                     # make output look nice
    (total_rating / number_of_ratings.to_f).round(2)
  end

  def longest_review  # find longest review content
    reviews_by_length = self.reviews.sort_by do |review|
      review.content.length
    end
    reviews_by_length.last  # in ascending order
  end

end
