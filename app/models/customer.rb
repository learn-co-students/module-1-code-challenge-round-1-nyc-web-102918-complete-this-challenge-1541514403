class Customer
  attr_accessor :first_name, :last_name
  @@all =[] #missing an @

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
      @@all.find do |customer|
        customer.full_name == name #full name not first name
      end
  end

  def self.find_all_by_first_name(name) #find_all is select
    @@all.select do |customer|
      customer.first_name == name
    end
    # @@all.select do |customer|
    #   customer.first_name == name
    # end
  end

  def self.all_names
    @@all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, rating, content) # follow the right order in Review class.
    Review.new(self, restaurant, rating, content)
  end

  def reviews # reviews belongs to customer instance. ( this one is not on the deliverable, but add it for the next method. )
    Review.all.select do |review|
      review.customer == self
    end
  end


  def num_reviews # use reviews method instead of the followings.
    self.reviews.count
  end

    # counter = 0
    # Review.all.each do |each_review|
    #   if each_review.customer == self
    #     counter += 1
    #   end
    # end
    # counter
  #end

  def restaurants # use the reviews method
    restaurant_array = []
    self.reviews do |each_review|
      restaurant_array<< each_review.restaurant
    end
    restaurant_array
  end

    # restaurant_array = []
    # Review.all.each do |each_review|
    #   if each_review.customer == self
    #     restaurant_array << each_review.restaurant
    #   end
    # restaurant_array
  end

end
