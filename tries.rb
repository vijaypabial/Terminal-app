require "csv"
puts "Please enter a filename"
filename = gets.chomp

csv = CSV.open("./#{filename}.csv", "a+")
puts "please enter data"
data = gets.chomp
csv << [data].to_a
puts


