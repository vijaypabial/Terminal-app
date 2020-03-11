require "csv"


def terminal_app
    puts "welcome to supply mania"
    puts "enter as : customer or supplier or exit"
    option = gets.chomp
    exit = false
    unless exit == true
        case 
        when option == "supplier"
            puts "please enter your pin code"
            pin = gets.chomp
            if pin == "12345"
                puts "welcome"
                puts "see or add or delete curruent file"
                opt = gets.chomp
                case
                when opt == "see"
                    CSV.foreach("./Retail.csv") do |row|
                      puts row.inspect
                      end
                when opt == "add"
                    puts "Please enter a filename"
                    filename = gets.chomp
                    csv = CSV.open("./#{filename}.csv", "a+")
                    puts "please enter data and to finish enter !quit in the next line"
                    puts "please enter data"
                    out = false
                    while out == false
                        data = gets.chomp
                    if data == "exit"
                        out = true
                    else
                        csv << [data].to_a
                        end
                    end
end
                    

                    end
                end

            else
                return puts " Wrong pin !!!! please try again !!!"
            end
    

         



end
p terminal_app