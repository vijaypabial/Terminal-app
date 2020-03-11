require "csv"
# require_relative "methods"


def terminal_app
    puts "welcome to supply mania"
    puts "enter as : supplier or exit"
    option = gets.chomp
    exit = false
    while exit == false
        case 
            when option == "supplier"
                    puts "please enter your pin code"
                    pin = gets.chomp
                        if pin == "12345"
                          puts "welcome"
                          puts "see or add a new file or delete curruent file"
                          opt = gets.chomp
                            case opt
                                when "see"
                                  puts "which file would you like to see"
                                  puts dir = Dir.entries("./supplier1").select {|f| !File.directory? f}
                                      file = gets.chomp
                                        if file.include?(dir.join(","))
                                        CSV.foreach("./supplier1/#{file}"){|row|
                                        puts row.inspect}
                                        else
                                        puts "please type the right file "
                                        end


                                when "add"
                                  puts "Please enter a filename"
                                  filename = gets.chomp
                                  csv = CSV.open("./supplier1#{filename}.csv", "a+")
                                  puts "please enter data and to finish enter 'exit' in the next line"
                                  puts "please enter data"
                                  output = false
                                    while output == false
                                     data = gets.chomp
                                        if data == "exit"
                                        output = true
                                        else
                                        csv << [data].to_a
                                        end
                                      end
                                else
                                   puts "wrong choice"
                                end
                        else
                          puts " Wrong pin !!!! please try again !!!"
                        end

        else
          p "Thank You!! Have a good day !!!"
          exit = true
        end

end

end
p terminal_app