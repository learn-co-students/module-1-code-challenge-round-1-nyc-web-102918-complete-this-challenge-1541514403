class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(cust_name)
    #FULL NAME
    self.all.find do |customer|
      customer.full_name == cust_name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    full_names = []
    self.all.select do |customer|
      full_names << customer.full_name
    end
    full_names
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select do |instance|
      instance.customer == self
    end
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    #UNIQ array of all restaurants custoemr has reviewed
    restaurants = self.reviews.map do |review|
      review.restaurant
    end.uniq
  end

end
