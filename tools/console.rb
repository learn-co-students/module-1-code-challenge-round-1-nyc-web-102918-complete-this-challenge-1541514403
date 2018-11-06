require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("Jane", "Doe")
c2 = Customer.new("John", "Smith")
c3 = Customer.new("Eva", "Hudson")
c4 = Customer.new("Jane", "Doe")
c5 = Customer.new("Eva", "Downing")

r1 = Restaurant.new("Franks")
r2 = Restaurant.new("Bistro217")
r3 = Restaurant.new("Chive Blossom")
r4 = Restaurant.new("Bistro217")

rev1 = Review.new(c1, r3, 8.5, "great")
rev2 = Review.new(c3, r1, 5, "decent")
rev3 = Review.new(c2, r1, 9, "amazing")
rev4 = Review.new(c1, r2, 7, "impressed")
rev5 = Review.new(c1, r3, 6.5, "good")
rev5 = Review.new(c2, r1, 3, "okay")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
