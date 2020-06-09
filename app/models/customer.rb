class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def customer_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    final = customer_reviews.map do |review|
      review.restaurant.name
    end
    final.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    customer_reviews.count
  end

  def self.find_by_name(name)
    self.all.find { |customer| customer.full_name == name }
  end

  def self.find_all_by_given_name(given_name)
    self.all.select { |customer| customer.given_name == given_name }
  end

end
