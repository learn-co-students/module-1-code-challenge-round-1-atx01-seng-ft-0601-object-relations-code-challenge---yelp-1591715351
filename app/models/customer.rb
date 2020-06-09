class Customer
  attr_accessor :given_name, :family_name

  @@all= []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
   @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def all_reviews_by_customer
    Review.all.select {|review| review.customer == self.given_name}
    #  This method will select all reviews for a customer. It is a helper method I will use to then select reviews for a specific restaurant.
    # I am assuming customer name given in reviews is the first name.
  end

 
  def restaurants
      all_reviews_by_customer.map {|review| review.restaurant}.uniq
      # this method looks through all the reviews for a restaurant and then provides the customers in that review.
      #  The .uniq method makes sure they dont repeat
end

def num_reviews
  all_reviews_by_customer.count
# Used the all_review_by_customer method and provided a count of that for the number of reviews
end

def self.find_by_name(fullname)
 self.all.find{ |i| i.full_name == fullname}
 end

def self.find_all_by_given_name(name)
  self.all.select {|i|i.given_name == name}
end

def add_review(restaurant, rating)
Review.new(self, restaurant, rating)

# Passing restaurant as a string. Don't know how to pass it as an object, but function still "works".

end
end
