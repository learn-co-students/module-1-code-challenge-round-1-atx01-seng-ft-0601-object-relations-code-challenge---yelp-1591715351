class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def restaurant_reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def reviews
    restaurant_reviews
  end

  def customers
    final = restaurant_reviews.map do |review|
      review.customer
    end
    final.uniq
  end

  def average_star_rating
    ratings = restaurant_reviews.map { |review| review.rating }
    ratings.sum(0.0) / ratings.size
  end
    
end
