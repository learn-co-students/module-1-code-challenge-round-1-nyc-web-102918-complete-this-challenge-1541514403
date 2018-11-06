class Customer
  attr_accessor :first_name, :last_name
  @@all = [] #all the customers are stored in this array

  def initialize(first_name, last_name)
    #initialize (or set up) the first and last name of the customer
    @first_name = first_name
    @last_name  = last_name
    @@all << self #the first and last name get shoveled into the array that's at the top of the page which the @@all is equal to 
  end

  def full_name
    #define the method of the customer's full name
    "#{first_name} #{last_name}" # this will eventually print out (or 'puts') the first and last name of the customer
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
    # add new review here
  end


  def self.all
    #returns all customer instances
    @@all
  end
end
