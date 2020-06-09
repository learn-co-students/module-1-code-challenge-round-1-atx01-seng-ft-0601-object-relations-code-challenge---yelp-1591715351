require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

sam = Customer.new("Samwell", "Tarly")
sam_jr = Customer.new("Samwell", "JR.")
jon = Customer.new("Jon", "Snow")
dany = Customer.new("Daenerys", "Targaryen")

ww = Restaurant.new("White-Walker's Wildling Wine")
qq = Restaurant.new("Queen's Quesadillas")
dd = Restaurant.new("The Dwarf's Dungeon'hest Crabs")

j1 = Review.new(jon, ww, 5)
j2 = Review.new(jon, qq, 2)
j3 = Review.new(jon, dd, 5)

s1 = Review.new(sam, ww, 1)
s2 = Review.new(sam, qq, 1)
s3 = Review.new(sam, dd, 5)

d1 = Review.new(dany, ww, 3)
d2 = Review.new(dany, qq, 3)
d3 = Review.new(dany, dd, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line