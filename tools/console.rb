require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

gavin = Customer.new("gavin", "moore")
ryan = Customer.new("ryan", "moore")
harvey = Customer.new("harvey", "moore")

mcd = Restaurant.new("Mcdonalds")
bk = Restaurant.new("BK")
dq = Restaurant.new("DQ")

review1 = Review.new(gavin, dq, 3, "Ice Cream and food")
review2 = Review.new(ryan, dq, 2, "Ice Cream and food")
review3 = Review.new(gavin, bk, 4, "Great Price!")
review4 = Review.new(ryan, bk, 4, "Great Price!")
review5 = Review.new(gavin, mcd, 1, "Trash!")
review6 = Review.new(gavin, mcd, 2, "Trash!")
#gavin.add_review(dq, 5, "Soft Serve")
#gavin.num_reviews

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
