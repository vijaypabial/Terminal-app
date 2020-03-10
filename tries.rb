require "csv"

 CSV.foreach("./Book1.csv") do |row1|
    puts row1.inspect
  end
#   info = gets.chomp
#   cats = [info] 
#   cats.map { |c| c.join(",") }.join("\n")
# CSV.generate do |csv|
#     csv << [:blue, 1]
#     csv << [:white, 2]
#     csv << [:black_and_white, 3]
# end  
# p CSV.read("./Book1.csv")