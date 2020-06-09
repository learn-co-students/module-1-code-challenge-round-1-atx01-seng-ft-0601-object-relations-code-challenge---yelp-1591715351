class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    reviews = Review.all.select do |review|
      review.customer == self
    end
    restaurants = reviews.map do |review|
      review.restaurant
    end
    restaurants.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    reviews = Review.all.select do |review|
      review.customer == self
    end
    reviews.length
  end

  def self.find_by_name(first_and_last_name)
    self.all.find do |customer|
      customer.full_name == first_and_last_name
    end
  end


  
  def self.find_all_by_given_name(given_name)
    self.all.select do |customer|
      customer.given_name == given_name
    end
  end

  def self.all
    @@all
  end



end











