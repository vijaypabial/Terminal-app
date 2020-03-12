require "csv"
# require_relative "methods"
def terminal_app
      tries = 3
      my_pin = "12"
      while tries > 0
        puts "Welcome to the Supply Mania!!!!"
        puts "please enter your pin code:"
        pin = gets.chomp
        if pin == my_pin
          puts "welcome"
          break
        elsif pin != my_pin
          puts "incorrect pin, try again"
          tries -= 1
        end
        if tries <= 0
          exit
        end
      end
      loop do
            puts "welcome to supply mania"
            puts
            puts "Please choose an option: [supplier] or [exit]"
            puts
              option = gets.chomp
            
              case 
                      when option == "supplier"                    
                      puts "What would you like to do today?" 
                      puts
                      puts "Read a file or Add a new file"
                      puts "Please choose one option :"
                      puts
                      puts "[Read] or [Add] or [exit]"
                      opt = gets.chomp
                          case opt
                              when "Read"
                                loop do
                                  puts "which file would you like to read? (Or type [exit] to exit)"
                                  puts
                                  puts dir = Dir.entries("./supplier").select {|f| !File.directory? f}
                                  puts
                                  file = gets.chomp
                                  puts
                                  if file == "exit"
                                    break
                                  elsif (dir.join(",").include?(file))
                                    CSV.foreach("./supplier/#{file}"){|row|
                                    puts row.inspect}
                                    puts
                                
                                
                                
                                
                                
                                  else
                                    puts "please type the right file "
                                    puts
                                  end
                                end
                              when "Add"
                                puts "Please enter a filename (!!! After typing file name please include [.csv] in the end)"
                                filename = gets.chomp
                                csv = CSV.open("./supplier/#{filename}.csv", "a+")
                                puts "please enter data and to finish enter 'exit' in the next line"
                                puts
                                output = false
                                while output == false
                                  data = gets.chomp
                                  if data == "exit"
                                    output = true
                                  else
                                    csv << [data].to_a
                                  end
                                end
                              when option == "exit"
                                p "Thank You for using Supply Mania !!! Have a good day !!!"
                                puts
                              else
                                puts "Invalid slection!! Please type the options available"
                                puts
                          end     
                  
            else
              p "Invalid selection !!  Please try again"
              puts
              next
            end
          end
end

terminal_app
