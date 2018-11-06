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

  def self.find_by_name(string_name)
    @@all.find do |each_restaurant|
      each_restaurant.name == string_name
    end
  end

  def customers
    my_reviews = Review.all.select do |each_review|
      each_review.restaurant == self
    end
    my_reviews.map do |each_my_review|
      each_my_review.customer
    end.uniq
  end

  def reviews
    my_reviews = Review.all.select do |each_review|
      each_review.restaurant == self
    end
  end

  def average_star_rating
    total_rating = 0
    num_rating = self.reviews.length.to_f
    self.reviews.each do |each_my_review|
      total_rating += each_my_review.rating
    end
    average = total_rating.to_f/num_rating

  end

  def longest_review
    answerAr = self.reviews
    newAr = answerAr.sort_by do |each_my_review|
      each_my_review.content.length
    end
    newAr[-1]
  end




end
