require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 41)
@store1.employees.create(first_name: "John", last_name: "Lennon", hourly_rate: 42)
@store1.employees.create(first_name: "Kurt", last_name: "Cobain", hourly_rate: 180)
@store2.employees.create(first_name: "Sid", last_name: "Vicious", hourly_rate: 40)
@store2.employees.create(first_name: "Paul", last_name: "McCartney", hourly_rate: 70)
@store2.employees.create(first_name: "Mick", last_name: "Jagger", hourly_rate: 200)
@store2.employees.create(first_name: "Ash", last_name: "Ketchum", hourly_rate: 42)