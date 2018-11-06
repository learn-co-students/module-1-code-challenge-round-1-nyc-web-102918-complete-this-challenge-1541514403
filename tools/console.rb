require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
chic = Restaurant.new("Chic")
dominos = Restaurant.new("Dominos")



vibhu = Customer.new("vibhu", "mahendru")
bharat = Customer.new("aash", "arora")
aash = Customer.new("aash", "tiku")

review1 = Review.new(vibhu, chic, 4, "blah blah blah")
review2 = Review.new(bharat, dominos, 5, "kokokoko")

vibhu.add_review(dominos, 5, "hahahahahddddddddddd")
aash.add_review(dominos, 3, "lololol")
aash.add_review(dominos, 5, "loljjjgfdfdl")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
