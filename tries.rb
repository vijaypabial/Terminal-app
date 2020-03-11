require "csv"
puts "Please enter a filename"
filename = gets.chomp

csv = CSV.open("./#{filename}.csv", "a+")
puts "please enter data"
out = false
while out == false
    puts 1
    data = gets.chomp
   if data == "exit"
    out = true
   else
    csv << [data].to_a
    end
end

unless 
