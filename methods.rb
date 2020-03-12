class methods
    initialize
def read_file
 puts dir = Dir.entries("./supplier").select {|f| !File.directory? f}
          file = gets.chomp
          if (dir.join(",").include?(file))#file.include?(dir)#
            CSV.foreach("./supplier1/#{file}"){|row|
            puts row.inspect}
          elsif file == "exit"
            break
          else
            puts "please type the right file "
          end
end