require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
new_customer=Customer.new("Martin","Di Vincenzo")
new_customer2=Customer.new("Martha", "DV")
new_customer3=Customer.new("Mariano", "Varela")
new_customer4=Customer.new("Marvin", "Johnson")
new_customer5=Customer.new("Martin", "Jones")
mcdonalds=Restaurant.new("mcdonalds")
wendys=Restaurant.new("wendys")
burgerking=Restaurant.new("burgerking")
newreview=Review.new("Martin","mcdonalds",5)
newreview2=Review.new("Martha","wendys",1)
newreview3=Review.new("Mariano","burgerking",3)
newreview4=Review.new("Marvin","mcdonalds",4)
newreview5=Review.new("Martin","wendys",3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line