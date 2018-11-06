require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

matt = Customer.new("Matt", "Migliore")
mike = Customer.new("Mike", "Cheng")
mj = Customer.new("Matt", "Jones")

shake_shack = Restaurant.new("Shake Shack")
burger_king = Restaurant.new("Burger King")

matt.add_review(shake_shack, "great", 4)
matt.add_review(shake_shack, "still great", 5)
mike.add_review(shake_shack, "i really like shake shack and this is the longest review", 5)
mj.add_review(shake_shack, "nope", 1)
matt.add_review(burger_king, "meh", 3)

rating_above = matt.add_review(shake_shack, "entered 10 for rating", 10)
rating_below = matt.add_review(shake_shack, "entered  0 for rating", 0)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
