
module supplier_options




    def See
    puts "which file would you like to see"
    puts Dir.entries("./supplier1").select {|f| !File.directory? f}
    file = gets.chomp
    CSV.foreach("./supplier1/#{file}") do |row|
    puts row.inspect
        end
    end
    
end