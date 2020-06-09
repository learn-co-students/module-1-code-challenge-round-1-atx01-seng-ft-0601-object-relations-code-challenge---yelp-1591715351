class Restaurant
  attr_reader :name
  attr_accessor :customer, :review
  
  @@all = []
  def initialize(name, customer, review)
    @name = name
    @customer = customer
    @review = review
  end

  def self.all
    @@all
  end
   def reviews
     Review.all.select do |review|
         review.restaurant == self
         

    end
  end
  def average_star_rating
    total = 0
    self.all.each do |restaurant|
        total += restaurant.review
    end
    (total / self.all.length).round(2)
    end  
    def customer
      customers = Review.all.map do |review|
          review.restaurant == self
          review.customer
      end
      customers.uniq
    end

end
