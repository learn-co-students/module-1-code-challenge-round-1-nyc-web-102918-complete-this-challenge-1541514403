require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Gene", "Kelly")
cust2 = Customer.new("Debbie", "Reynolds")
cust3 = Customer.new("Donald", "O'Connor")
cust4 = Customer.new("Gene", "Burger")

rest1 = Restaurant.new("McDonalds")
rest2 = Restaurant.new("Wendys")


rev1 = Review.new(1, "Fries are soggy", cust1, rest1)
rev2 = Review.new(2, "Burger was not cooked", cust2, rest1)
rev3 = Review.new(5, "I love this place", cust3, rest1)
rev4 = Review.new(3, "Meh", cust1, rest2)
rev5 = Review.new(2, "Fries were too salty", cust2, rest2)
rev6 = Review.new(4, "I love this place second best!", cust3, rest2)
rev7 = Review.new(4, "Came back for more!", cust3, rest2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
