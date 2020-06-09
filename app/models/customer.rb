class Customer
  attr_accessor :given_name, :family_name

  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all<< self
  end
  def full_name
    "#{given_name} #{family_name}"
  end
  def self.all
    @@all
  end

  def restaurants
    Review.all.select {|review| review.customer == self.full_name}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(restaurant,self.full_name,rating)
  end

  def num_reviews
   custard = Review.all.select {|review| review.customer == self.full_name}

   "#{self.full_name} has written #{custard.length} review(s)"
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.select {|customer| customer.given_name == name}
  end
end

