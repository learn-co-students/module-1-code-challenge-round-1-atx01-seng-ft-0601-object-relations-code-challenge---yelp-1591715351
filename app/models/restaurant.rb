class Restaurant

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |khaleesi|
      khaleesi.restaurant == self
    end
  end

  def customers
    self.reviews.map do |direwolf|
      direwolf.customer 
    end
  end

  def average_star_rating
    tot = self.reviews.map do |faceless_men|
      faceless_men.rating
    end
    total = tot.inject(:+)
    (total/(tot.length))
  end

end
