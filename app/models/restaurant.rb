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

  def reviews # goes through all the reviews, picks out the matching restaurant ones
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers # goes through the matched reviews and grabs the customer, uniq for no repeats
    customers = reviews.map do |review|
      review.customer
    end
    customers.uniq
  end

  def self.find_by_name(name) # matches the restaurant name to the argument name, returns just the first one
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def average_star_rating #goes through each review of the particular restaurant, adding up all the review points, then you divide that number by the total reviews to get the average
    total_review_points = 0
    reviews.each do |review|
      total_review_points += review.rating
    end
    average = total_review_points.to_f / reviews.length.to_f
    average
  end

  def longest_review # goes through each review of the particular restaurant, looking at the length of the content, and making that the variable if its the longest content
    longest_review_length = 0
    longest_review = ""
    reviews.each do |review|
      if review.content.length > longest_review_length
        longest_review_length = review.content.length
        longest_review = review.content
      end
    end
    longest_review
  end


end
