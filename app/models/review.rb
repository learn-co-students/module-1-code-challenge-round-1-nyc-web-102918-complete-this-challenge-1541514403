class Review
  attr_accessor :rating, :content  
  attr_reader :customer, :restaurant
    @@all = []

    def self.all    
        @@all
    end 

    # Review.all
    # returns all of the reviews

def initialize (rating, customer, restaurant, content)
    @rating=rating
    @customer=customer
    @restaurant=restaurant
    @content=content
    @@all<<self 
end 

    # Review#customer
    # returns the customer object for that given review
    # Once a review is created, I should not be able to change the author
    
    
    # Review#restaurant
    # returns the restaurant object for that given review
    # Once a review is created, I should not be able to change the restaurant
    
    
    #  Review#rating
    # returns the star rating for a restaurant. This should be an integer from 1-5
   
   
    # Review#content
    # returns the review content, as a string, for a particular review



end

