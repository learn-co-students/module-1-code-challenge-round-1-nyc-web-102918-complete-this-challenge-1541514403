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

  def self.find_by_name(name)
    answer = @@all.find do |each_customer|
      each_customer.full_name == name
    end
    answer
  end

  def self.find_all_by_first_name(name)
    @@all.select do |each_customer|
      each_customer.first_name == name
    end
  end

  def self.all_names
    newAr = []
    @@all.each do |each_customer|
      newAr << each_customer.full_name
    end
    newAr
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select do |each_review|
      each_review.customer == self
    end.length

  end

  def restaurants
    my_reviews = Review.all.select do |each_review|
      each_review.customer == self
    end
    my_reviews.map do |each_my_review|
      each_my_review.restaurant
    end.uniq
  end








end #LAST END
