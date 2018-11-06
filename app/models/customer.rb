class Customer
  attr_accessor :first_name, :last_name
  @all =[]

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

  def self.find_by_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    @@all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    counter = 0
    Review.all.each do |each_review|
      if each_review.customer == self
        counter += 1
      end
    end
    counter
  end

  def restaurant
    restaurant_array = []
    Review.all.each do |each_review|
      if each_review.customer == self
        restaurant_array << each_review.restaurant
      end
    restaurant_array
  end

end
