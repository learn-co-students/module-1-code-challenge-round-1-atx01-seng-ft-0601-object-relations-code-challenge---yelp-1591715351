require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#CUSTOMERS
spencer = Customer.new("Spencer", "Smith")
phil = Customer.new("Philip", "Roush")
toby = Customer.new("Toby", "Boudreaux")
nandita = Customer.new("Nandita", "Venkat")
fake_toby = Customer.new("Toby", "BooDro")

#RESTAURANTS
chilis = Restaurant.new("Chili's")
torchys = Restaurant.new("Torchy's Tacos")
tacodeli = Restaurant.new("Taco Deli")
magnolia = Restaurant.new("Magnolia Cafe")

#REVIEWS
review1 = Review.new(spencer, chilis, 5)
review2 = Review.new(toby, torchys, 1)
review3 = Review.new(phil, torchys, 5)
review4 = Review.new(nandita, magnolia, 3)
review5 = Review.new(spencer, tacodeli, 5)
review6 = Review.new(toby, chilis, 4)
review7 = Review.new(nandita, torchys, 2)
review8 = Review.new(nandita, torchys, 5)
review9 = Review.new(fake_toby, chilis, 2)


# def initialize(customer, restaurant, rating)
#   @customer = customer
#   @restaurant = restaurant
#   @rating = rating

#   @@all << self
# end

binding.pry
0 #leave this here to ensure binding.pry isn't the last line