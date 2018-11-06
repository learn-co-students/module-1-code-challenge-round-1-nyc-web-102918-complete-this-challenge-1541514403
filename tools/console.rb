require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


restaurant_1 = Restaurant.new("Wendys")
restaurant_2 = Restaurant.new("Mcdonalds")
restaurant_3 = Restaurant.new("Jack in the Box")

customer_1 = Customer.new("Jack", "JellyBean")
customer_2 = Customer.new("Suzie", "Something")
customer_3 = Customer.new("Fred", "Frankfurter")

review_1 = Review.new(customer_1, restaurant_1, 2, "This restaurant is terrible!")
review_2 = Review.new(customer_2, restaurant_2, 1, "Worst eating establishment ever.")
review_3 = Review.new(customer_3, restaurant_3, 3, "Cockroaches could serve better meals than this!")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
