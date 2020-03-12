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
      "incorrect pin, try again"
      tries -= 1
    end
    if tries <= 0
       exit
    end
  end

    
  loop do
    puts "welcome to supply mania"
    puts "enter as : supplier or exit"
    option = gets.chomp
  
    case 
    when option == "supplier"                    
      puts "read or add a new file or delete curruent file"
      opt = gets.chomp
      case opt
      when "read"
        loop do
          puts "which file would you like to see? (Or type exit to exit)"
          puts dir = Dir.entries("./supplier1").select {|f| !File.directory? f}
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
    when option == "exit"
      p "Thank You!! Have a good day !!!"
      exit      
    else
      p "Invalid selection !!  Please try again"
    end
  end
end

terminal_app
