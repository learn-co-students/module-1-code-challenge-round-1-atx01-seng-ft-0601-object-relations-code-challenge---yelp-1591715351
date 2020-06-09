require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

roush = Customer.new("Philip", "Roush")
nelson = Customer.new("Willie", "Nelson")
durant = Customer.new("Kevin", "Durant")

daveandbusters = Restaurant.new("Dave and Busters", roush, "Games were fun! But the food wasn't good" )
mattselrancho = Restaurant.new("Matt's El Rancho", nelson, "Incredile all around!" )
theoasis = Restaurant.new("The Oasis", durant, "The best views in town! Food was just good enough!")



review1 = Review.new(roush, daveandbusters, 2.0)
review2 = Review.new(nelson, mattselrancho, 5.0)
review3 = Review.new(durant, theoasis, 3.0)
review4 = Review.new(durant, mattselrancho, 4.0)
review5 = Review.new(roush, theoasis, 2.0)
review6 = Review.new(nelson, daveandbusters, 3.5)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line