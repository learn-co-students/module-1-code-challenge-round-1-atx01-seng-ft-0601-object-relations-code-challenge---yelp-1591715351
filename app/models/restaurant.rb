class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
    customers = reviews.map do |review|
      review.customer
    end
    customers.uniq
  end

  def average_star_rating
    total = 0
    self.reviews.each do |review|
      total += review.rating
    end
    total / self.reviews.length
  end




# #### Restaurant

# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
#   - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings



  def self.all
    @@all
  end

end



# `Restaurant#initialize`
# - Restaurants should be initialized with a name, as a string
# - `Restaurant#name`
# - returns the restaurant's name
# - should not be able to change after the restaurant is created
