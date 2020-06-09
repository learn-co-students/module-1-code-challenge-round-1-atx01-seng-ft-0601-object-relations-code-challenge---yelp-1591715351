class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
   Review.all.select do |review|
    review.restaurant == self.name
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def ratings
    self.reviews.map do |review|
      review.rating
    end
  end

  def average_star_rating
   rum = self.reviews.map do |rate|
      rate.rating
    end
    rum.sum(0.0) / rum.length
  end

end
 