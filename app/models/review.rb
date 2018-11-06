class Review

  attr_accessor :rating, :content
  attr_reader :author, :restaurant

  @@all = []

  def initialize(rating, content, author, restaurant) #initializes a review with all attributes
    @rating = rating
    @content = content
    @author = author
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

  

end
