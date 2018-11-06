require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

smokeys = Restaurant.new("Smokeys")
sad_pig = Restaurant.new("Sad Pig")
trash_can = Restaurant.new("Trash Can")
bbq_4_life = Restaurant.new("BBQ 4 Life")

billy_bob = Customer.new("Billy", "Bob")
tommy_lee = Customer.new("Tommy", "Lee")
mike_cheng = Customer.new("Mike", "Cheng")

r1 = Review.new(4, "delicious!", tommy_lee, smokeys)
r2 = Review.new(2, "terrible!", mike_cheng, trash_can)
r3 = Review.new(5, "The best!", billy_bob, sad_pig)
r4 = Review.new(2, "stinky", billy_bob, trash_can)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
