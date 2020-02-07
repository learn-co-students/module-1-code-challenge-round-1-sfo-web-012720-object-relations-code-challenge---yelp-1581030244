require_relative '../config/environment.rb'
require 'pp'


def reload
  load 'config/environment.rb'
end


#START


testCustomerA = Customer.new("Michael", "Morales")
testCustomerB = Customer.new("Harry", "Potter")
testCustomerC = Customer.new("Harry", "Potter")
testRestaurantA = Restaurant.new("Cafe le Monde")
testRestaurantB = Restaurant.new("Three Broomsticks")
testReviewA = Review.new(testCustomerA, testRestaurantA, 5)
testReviewB = Review.new(testCustomerB, testRestaurantB, 10)
testReviewC = Review.new(testCustomerA, testRestaurantB, 11)


puts
pp testCustomerA, testCustomerB, testCustomerC, testRestaurantA, testRestaurantB
pp testReviewA, testReviewB, testReviewC
puts


#STOP


binding.pry
"YOLO420"