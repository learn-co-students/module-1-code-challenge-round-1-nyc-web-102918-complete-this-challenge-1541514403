require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

john = Customer.new("John", "Smith")
john2 = Customer.new("John", "Smithy Smith Smith")
bob = Customer.new("Bob", "Lee")
tracy = Customer.new("Tracy", "Asadknjfsd;lkf")

bbq_spot = Restaurant.new("BBQ Spot")
shake_shack = Restaurant.new("Shake Shack")
in_n_out = Restaurant.new("In-N-Out")

four_stars = Review.new(john, bbq_spot, "I love this place. 4 stars!", 4)
two_stars = Review.new(john2, bbq_spot, "How can anyone enjoy the food here? Ugh.", 2)
five_stars = Review.new(tracy, shake_shack, "The beeeeeeeeeest burger spot.", 5)
three_stars = Review.new(john, in_n_out, "I don't understand what the hype is about. It's not even a competition. Shake Shack > In-N-Out.", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
