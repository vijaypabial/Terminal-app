# require "csv"
# puts "Please enter a filename"
# filename = gets.chomp

# csv = CSV.open("./#{filename}.csv", "a+")
# puts "please enter data"
# out = false
# while out == false
#     puts 1
#     data = gets.chomp
#    if data == "exit"
#     out = true
#    else
#     csv << [data].to_a
#     end
# # end

# # unless 

# # p Dir["../supplier1"].select { |e| File.file?(e) }
# p Dir.entries("./supplier1").select {|f| !File.directory? f}

# newrow = row.each_with_index { |rowcontent , row_num| puts "#     {rowcontent} #{row_num}" }
# p Dir.entries("./supplier1").select {|f| !File.directory? f}
require 'csv'

# CSV.open('test.csv','w', 
#     :write_headers=> true,
#     :headers => ["numerator","denominator","calculation"] #< column header
#   ) do|hdr|
#   1.upto(12){|numerator|
#     1.upto(12){ |denominator|
#       data_out = [numerator, denominator, numerator/denominator.to_f]
#       hdr << data_out
#     }
#   }
# end
# Adding new data
headers = ["name","height", "age","gender"]
CSV.open('file.csv', 'a+') do |row|
 row << headers
end
