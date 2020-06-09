class Customer

  attr_reader :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name = family_name

    self.class.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |sellsword|
      sellsword.customer == self
    end
  end

  def restaurants
    self.reviews.map do |iron_born|
      iron_born.restaurant
    end
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(name)
    Customer.all.select do |name_day|
      name_day.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do |night_watch|
      night_watch.given_name == name
    end
  end

  
end
