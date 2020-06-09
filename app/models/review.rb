class Review
    attr_accessor  :rating
    attr_reader :restaurant,:customer

    @@all = []

    def initialize(restaurant,customer,rating)
        @restaurant=restaurant
        @customer = customer
        @rating = rating
    
        @@all<< self
      end

      def self.all
        @@all
      end
  
end