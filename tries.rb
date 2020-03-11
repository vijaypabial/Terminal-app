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
p Dir.entries("./supplier1").select {|f| !File.directory? f}