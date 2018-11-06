require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

matt_r = Customer.new("Matt", "Readout")
matt_f = Customer.new("Matt", "Fonda")
jennie = Customer.new("Jennie", "Griswold")
mike = Customer.new("Mike", "Cheng")
david = Customer.new("David", "Readout")

cafe_z = Restaurant.new("Cafe Zona Sur")
diner = Restaurant.new("Sunset Park Diner")
slimak = Restaurant.new("Slimak")
parlay = Restaurant.new("Parlay")

matt_r.add_review(diner, "great donuts!", 4)
mike.add_review(slimak, "i hate this place :(", 0)
jennie.add_review(cafe_z, "omg, like everything is so good here! i love the burgers and fries especially.", 7)
david.add_review(diner, "meh, it's ok", 3)
mike.add_review(diner, "found a hair in my eggs", 1)
david.add_review(slimak, "grat coffee!", 5)
mike.add_review(slimak, "i love this place now!", 5)
matt_f.add_review(cafe_z, "it's pretty good", 3)
matt_r.add_review(cafe_z, "the food is good, but they close early", 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
