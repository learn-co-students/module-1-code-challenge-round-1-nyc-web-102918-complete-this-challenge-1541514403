require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Bob", "Smith")
c2 = Customer.new("Tim", "Jones")
c3 = Customer.new("Bob", "Lewis")

res1 = Restaurant.new("Marios")
res2 = Restaurant.new("Harrys")
res3 = Restaurant.new("Pauls")

rev1 = Review.new(c1, res1, 3, "Good")
rev2 = Review.new(c2, res1, 4, "Great")
rev3 = Review.new(c1, res2, 2, "Poor")
rev4 = Review.new(c1, res3, 5, "Awesome")
rev5 = Review.new(c3, res1, 3, "Good")
rev6 = Review.new(c1, res1, 2, "Really Really Poor")
rev7 = Review.new(c2, res3, 4, "Super Great")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
