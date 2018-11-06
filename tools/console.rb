require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Leanne", "Cabey")
customer2 = Customer.new("Harry", "Potter")
customer3 = Customer.new("Harry", "Weasley")

restaurant1 = Restaurant.new("The Three Broomsticks")
restaurant2 = Restaurant.new("The Hogs Head")
restaurant3 = Restaurant.new("The Leaky Cauldron")

review1 = customer1.add_review(restaurant1, 7, "V Good")
review2 = Review.new(customer1, restaurant2, -2, "V Bad")
review3 = Review.new(customer2, restaurant3, 4.5, "P Good")
review4 = Review.new(customer3, restaurant2, 2, "P Bad")
review5 = customer1.add_review(restaurant1, 2, "Not as good as last time")

# Run in pry

# Customer.all
# customer1.full_name
# Customer.find_by_name("Leanne Cabey")
# Customer.find_all_by_first_name("Harry")
# Customer.all_names
# Restaurant.all
# Restaurant.find_by_name("The Leaky Cauldron")
# Review.all
# review1.customer
# review2.restaurant
# review3.rating
# review4.content
# customer1.reviews
# customer1.num_reviews
# customer1.restaurants
# restaurant1.reviews
# restaurant1.customers
# restaurant1.average_star_rating
# restaurant1.longest_review


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
