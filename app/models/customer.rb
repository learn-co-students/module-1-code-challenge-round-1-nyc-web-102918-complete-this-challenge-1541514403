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

  def reviews # goes through all the reviews, picks out the matching customer ones
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants # goes through the matched reviews and grabs the restaurant, uniq for no repeats
    restaurants = reviews.map do |review|
      review.restaurant
    end
    restaurants.uniq
  end

  def self.find_by_name(name) # matches the customer name to the argument name, returns just the first one
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(first_name) # same as above except its an array of all the names not just the first
    self.all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names # maps a new array of all the names of customers
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, rating, content) # self is the customer instance youre calling the method on, the rest you just fill in
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews # the array of reviews already exists, just find the length of the array
    reviews.length
  end

end
