require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "Total revenue: #{Store.sum(:annual_revenue)}."
puts "Average store revenue: #{Store.sum(:annual_revenue) / Store.count}"

@stores_over_1m = Store.where("annual_revenue > ?", 1000000).count

puts "Number of stores generating more than 1M sales per year: #{@stores_over_1m}"