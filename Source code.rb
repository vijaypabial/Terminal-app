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
                puts "update a file or see curruent file"
                opt = gets.chomp
                case
                when opt == "see"
                    CSV.foreach("./Book1.csv") do |row|
                      puts row.inspect
                      end



                end

            else
                return puts " Wrong pin !!!! please try again !!!"
            end
        when option == "customer"
            puts "happy shopping"
         end
    end

         



end
p terminal_app