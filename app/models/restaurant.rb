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
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews #array of all reviews a written about restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    total = 0
    self.reviews.each do |review|
      total += review.rating
    end
    total / self.reviews.length
  end

  # def content
  #   self.reviews.map do |review|
  #     review.content
  #   end
  # end
  #
  # def longest_review
  #   longest = nil
  #
  #   self.content.each do |content|
  #     #if longest == nil || conten
  #   end
  # end













end #class Restaurant
