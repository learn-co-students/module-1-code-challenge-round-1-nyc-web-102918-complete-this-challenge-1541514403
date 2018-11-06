class Restaurant
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    total_stars = 0
    reviews.each do |review|
      total_stars += review.rating
    end
    total_stars.to_f / reviews.length
  end

  def longest_review
    longest_content = ""
    reviews.each do |review|
      if review.content.length > longest_content.length
        longest_content = review.content
      end
    end
    longest_content
  end

end
