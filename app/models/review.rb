class Review
                # allow customers to edit their reviews
  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    if rating <= 1  # restrict rating to 1-5
      @rating = 1
    elsif rating >= 5
      @rating = 5
    else
      @rating = rating
    end

    @@all << self
  end

  def self.all
    @@all
  end



end
