require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

burnaby = Store.new(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.new(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.new(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

burnaby.save
richmond.save
gastown.save

puts "Total number of stores: #{Store.count}."
