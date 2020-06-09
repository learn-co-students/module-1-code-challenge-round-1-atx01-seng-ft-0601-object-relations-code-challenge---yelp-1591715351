class Restaurant
  attr_reader :name

  #name: string

  def initialize(name)
    @name = name
  end

  def reviews
    reviews = Review.all.select {|review| review.restaurant == self}.uniq
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  #result should be a float
  def average_star_rating
    total = 0
    self.reviews.each {|review| total += review.rating}
    (total.to_f / self.reviews.length).round(1)
  end
end
