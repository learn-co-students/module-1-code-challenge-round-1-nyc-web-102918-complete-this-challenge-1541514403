class Restaurant
	@@all = []

	def self.all
		@@all
	end

	def self.find_by_name(name)
		self.all.find{|restuarant| restaurant.name == name}
	end

  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def reviews
  	Review.all.select{|review| review.restaurant == self }
  end

  def customers
  	reviews.map{|review| review.customer }.uniq
  end

  def average_star_rating
  	reviews.map{|review| review.rating }.reduce(:+) / reviews.length.to_f
  end

  def longest_review
  	reviews.max_by{|review| review.content.length }
  end
end
