class Customer
  attr_reader :restaurant, :review
  attr_accessor :first_name, :last_name
@@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.find_all_by_first_name(name)
    self.all.select do |name_instance|
      name_instance.first_name == name
    end
  end

  def self.all_names
    self.all.map do |name|
      name.full_name
    end
  end

  def self.find_by_name(name)
    self.all_names.find do |name|
      name == name #I think you're looking for the instance but I managed to find the full name
    end
  end
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end
def num_reviews
  Review.all.select do |review|
  review.customer == self
end
end
def restaurants
  self.num_reviews.select do |customer_review|
    customer_review.restaurant.name
end.uniq
end
  def full_name
    "#{first_name} #{last_name}"
  end
  def self.all
    @@all
  end
end
