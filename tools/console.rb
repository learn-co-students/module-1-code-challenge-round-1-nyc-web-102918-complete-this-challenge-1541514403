require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



c1= Customer.new("Patrick","Duran")
r1= Review.new("Arturo","Marbella","excelente service",4)


test1= c1.find_by_name("Patrick Duran")
test2=c1.find_all_by_first_name("Patrick")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
customer,restaurant, content,rating)
