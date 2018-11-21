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
      restaurant.name = name
    end
  end

  def customers
    customers_list = []
    Review.all.each do |each_review|
      if each_review.restaurant == self
        customers_list << each_review.customer
      end
    end
    customers_list
  end

  def reviews
    Reivew.all.select do |each_review|
      each_review.restaurant == self
    end
  end

  def average_star_rating
    totall_rating = 0
    counter = 0
    Review.all.each do |each_review|
      if each_review == restaurant
      totall_rating += each_review.rating
      counter += 1
      end
    end
    (totall_rating/counter).to_i
  end

    def longest_review  #use reviews method
      longest_review = ""
      self.reviews.each do |review|
        if review.length > longest_review.length
          longest_review = review
        else
          longest_review
        end
        longest_review
      end
      # current_restanrant_review = []
      # Review.all.each do |each_review|   #need calculate the review with longest string.
      #   if each_review.restaurant == self # locate the given restaurant
      #     current_restanrant_review << each_review.review_content  # need to pull out the longest review element                              #compare the reviews within that restaurant
      #   end
      # end
      # current_restanrant_review.count # need to calculate the longest element from this array.
    end

end
