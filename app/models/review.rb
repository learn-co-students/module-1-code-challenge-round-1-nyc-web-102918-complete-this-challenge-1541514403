class Review
attr_reader :customer, :restaurant


@@all = []

  def initialize(customer,restaurant, content,rating)
    @customer =customer
    @restaurant = restaurant
    @content = content
    @rating = 0
    @all << self

  end

  def self.all
    @@all

  end

  def rating(star_rating)
    puts ("the rating should be between 1-5")
    if star_rating > 0 && star_rating < 6
      star_rating
    else
      "invalid start rating for the restaurant"
    end

    #  def content
    #   returns the review content, as a string, for a particular review
    # I would check all the customer to find the owner of that review, So I have to iterate all de customer
    # and find the review that matches with the review given and then I can save that review found in a variable and
    # finally I can return it as string
end
