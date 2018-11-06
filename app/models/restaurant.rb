class Restaurant
  attr_accessor :name

  @@all = [] #create array for all restaurants

  def initialize(name) #initialize new restaurant
    @name = name
    @@all << self #shovels all restaurant instances into array
  end

  def self.all
    @@all

end

  def customers #iterates through Review Class to match customer review with restaurant
  customer_restaurant =  Review.all.select { |review| review.restaurant == self }
  customer_restaurant.uniq
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }

  end

  def average_star_rating
    ratings = Review.all.map { |restaurant| restaurant.rating }
    ratings.reduce(:+)/ratings.length  #add all numbers in ratins array and devides by array length
  end

  def longest_review
    longest = Review.all.each { |review| review.content } #a string is needed to count string characters
    longest.size
  end
end
