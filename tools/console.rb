require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# pass in given_name, family_name as strings
spencer = Customer.new("Spencer", "Smith")
toby = Customer.new("Toby", "Boudreaux")
jodi = Customer.new("Jodi", "Croft")
phil = Customer.new("Phil", "Roush")
brad = Customer.new("Brad", "Carter")
antonio = Customer.new("Antonio", "Reid")
brad2 = Customer.new("Brad", "Pitt")

# pass in name as string
mcdonalds = Restaurant.new("McDonald's")
arbys = Restaurant.new("Arby's")
torchys = Restaurant.new("Torchy's")

#pass in customer(instance), restaurant(instance), rating(int 1-5)
review1 = Review.new(spencer, mcdonalds, 5)
review2 = Review.new(spencer, arbys, 4)
review3 = Review.new(spencer, torchys, 5)
review4 = Review.new(toby, mcdonalds, 4)
review5 = Review.new(toby, arbys, 1)
review6 = Review.new(jodi, torchys, 2)
review7 = Review.new(phil, arbys, 2)
review8 = Review.new(brad, mcdonalds, 5)
review9 = Review.new(antonio, mcdonalds, 1)
review10 = Review.new(brad2, mcdonalds, 4)
review11 = Review.new(spencer, mcdonalds, 4)
review12 = Review.new(jodi, torchys, 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line