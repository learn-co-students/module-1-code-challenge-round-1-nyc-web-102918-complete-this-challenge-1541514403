class Customer
  attr_accessor :first_name, :last_name

   @@all = [] #create an array to access all customrers

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

 def add_review(restaurant, content, rating) #initializes a new review within customer class
   Review.new(rating, content, self, restaurant)
 end

 def num_reviews #iterates through Review class which connects restaurants with customer

   customer_reviews = Review.all.select { |review| review.author == self }
   customer_reviews.length #number of arrays
  end


end
