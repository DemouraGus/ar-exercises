require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.new(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.new(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.new(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

surrey.save
whistler.save
yaletown.save

@mans_stores = Store.where(mens_apparel: true)
@mans_stores.each do |store|
  puts "Store name: #{store.name}"
  puts "Annual Revenue: #{store.annual_revenue}."
end

@womens_stores_under_1m = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
@womens_stores_under_1m.each do |store|
  puts "Store name: #{store.name}"
  puts "Annual Revenue: #{store.annual_revenue}."
end