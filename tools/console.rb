require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

brad = Customer.new("Brad", "Carter")
mike = Customer.new("Killer", "Mike")
big = Customer.new("Big", "Boi")
inferior_brad = Customer.new("Brad", "Pitt")

torchys = Restaurant.new("Torchy's")
chilantro = Restaurant.new("Chilantro")
tacobell = Restaurant.new("Taco Bell")

brad.add_review(tacobell, 5)
brad.add_review(chilantro, 4)
mike.add_review(torchys, 2)
big.add_review(chilantro, 2)
brad.add_review(torchys, 1)
brad.add_review(chilantro, 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line