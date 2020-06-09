class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self.name}
    #  This method matches the name to the name property on the Restaurant not to the name the class was initialzed to.
  end

  def customers
      reviews.map {|review| review.customer}.uniq
      # this method looks through all the reviews for a restaurant and then provides the customers in that review.
      #  The .uniq method makes sure they dont repeat
end


def average_star_rating
  sum = 0
  reviews.each { |a| sum+=a.rating.to_f }
  sum.to_f
  average = sum / reviews.count
 average.to_f
end



end
