class Restaurant
  attr_accessor :name

  @@all =[]

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

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def all_customers
    reviews.map do |review|
      review.customer
    end
  end

  def customers
    all_customers.uniq
  end

  def average_star_rating
    total_stars = 0
    #adds the star rating of each review to total_stars
    reviews.each do |review|
      total_stars += review.rating
    end
    #calculates average review rating
    total_stars / reviews.length.to_f
  end

  def longest_review
    #sort all of the reviews for a restaurent by the length of the review content
    reviews_sorted_by_length = reviews.sort {|r1, r2| r2.content.length <=> r1.content.length}
    #select the first review in the sorted list, and return its content
    reviews_sorted_by_length.first.content
  end
end
