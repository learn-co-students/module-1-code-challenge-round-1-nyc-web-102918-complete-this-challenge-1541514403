class Review
  attr_accessor :rating, :content # attr_accessor means these can't be changed once they're created
  attr_reader :customer, :restaurant
  @@all = [] # all the reviews are stored in this array

  def initialize(customer, restaurant, rating, content)
    #each of these is equal to itself after they are set up/defined in the method 
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self #i'm shovelling these items into the array defined at the top of the page
  end


  def self.all
    @@all
    # returns all the reviews
  end

end
