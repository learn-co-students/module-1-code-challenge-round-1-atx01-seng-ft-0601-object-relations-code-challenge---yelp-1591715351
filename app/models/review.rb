class Review
  attr_reader :customer, :restaurant, :rating

  @@all = []
  
    def initialize(customer,restaurant,rating)
    @customer = customer
    @restaurant = restaurant
    @rating=rating
    @@all << self
end

def self.all
    @@all
end

def customer
    @customer = customer
    # this does the same thing as attr_reader, don't know how to pull the objects from other clasess.
    #  I think it has to do with inheritances, but need to review that.
  end

  def restaurant
    @restaurant = restaurant
       # this does the same thing as attr_reader, don't know how to pull the objects from other clasess.
    #  I think it has to do with inheritances, but need to review that.
  end


def rating
#  average_star_rating
#  Ran out of time to complete it this. Left it for last because I was intending to pull from the average_star rating. 
# Since a restuarant rating is its average rating, but ran out of time so could not get it to work.
end

end