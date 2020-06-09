class Review
  
    attr_reader :customer, :restaurant, :rating
    
    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.rating(restaurant)
        # list = self.all.select { |review| review.restaurant == restaurant }
        # final = list.map { |review| review.rating }
        # final.sum(0.0) / final.size
    # end


end