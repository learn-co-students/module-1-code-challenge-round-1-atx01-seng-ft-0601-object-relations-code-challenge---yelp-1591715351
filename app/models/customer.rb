class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  #given_name and family_name are strings
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    self_reviews = Review.all.select {|review| review.customer == self}
    self_reviews.map {|review| review.restaurant}.uniq
  end

  #rest(restaurant instance), rate(integer 1-5)
  def add_review(rest, rate)
    Review.new(self, rest, rate)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.count
  end

  #name is a FULL NAME and only returns FIRST customer
  def self.find_by_name(name)
    self.all.find {|person| person.full_name == name}
  end

  #name is first name only as a string
  def self.find_all_by_given_name(name)
    self.all.select {|person| person.given_name == name}
  end

end
