class Review

    attr_accessor :rating
    attr_reader :restaurant, :customer

    @@all = []

    #customer: object, restaurant: object, rating: integer

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        self.class.all << self
    end

    def self.all
        @@all
    end
  
end