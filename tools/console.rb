require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
rev1 = Review.new("good")
rev2 = Review.new("ok")  # these are supposed to print out in the console. they don't work, because i get an undefined method of tools when i type ruby tools/console.rb. but if they were to work, this would be what the code would look like (i think).
rev3 = Review.new("ugh")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
