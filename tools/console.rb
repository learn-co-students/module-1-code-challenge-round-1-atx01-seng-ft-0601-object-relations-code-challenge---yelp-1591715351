require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
anon = Customer.new("Fisrt","lagst")
aet = Customer.new("Best","Bet")
aon = Customer.new("Chris","Kris")
aioli = Customer.new("Chris","Hoop")

bluh = Restaurant.new("Elmers")
blob = Restaurant.new("Chris-py's")
Blep = Restaurant.new("Rip,Tear")


cad1 = Review.new("Chris-py's","Chris Kris",5)
cad2 = Review.new("Chris-py's","lorraine Pearl",3)
cad3 = Review.new("Chris-py's","Best Bet",4)
cad4 = Review.new("Chris-py's","Chris Hoop",5)
cad5 = Review.new("Chris-py's","Fisrt lagst",3)
cod = Review.new("Elmers","Glue eater",5)
cod2 = Review.new("Elmers","Fisrt last",1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line