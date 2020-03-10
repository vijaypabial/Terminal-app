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
                puts "what would you like to do today?"
                puts "options : update or delete a file"
                # opt = gets.chomp
                # case
                # when opt == "update"
                # end

            else
                return puts " Wrong pin !!!! please try again !!!"
            end
        when option == "customer"
            puts "happy shopping"
         end
    end

         



end
p terminal_app