class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    name.split
    Review.all.find {|review| review.customer.first_name == name[0] && review.customer.last_name == name[1]}
  end

  def self.find_all_by_first_name(name)
    Review.all.find {|review| review.customer.first_name == name}
  end

  def self.all_names
    all_customers = Review.all.map {|review| review.customer.first_name && review.customer.last_name}
    all_customers.uniq
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    customer_reviews = Review.all.map {|review| review.customer}
    customer_review.length
  end

  def restaurants
    customer_restaurants = Review.all.map {|review| review.restaurant}
    customer_restaurants.uniq
  end

end
