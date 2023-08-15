
secret_number = rand(100)
#puts secret_number
puts "Insert any number from 1 to 100"

#while loop method, x means number of tries

x = 1 

while x <= 6
	answer = gets.chomp.to_i #to_i means change to numbers or integers
	puts answer 

	if answer < secret_number
	    puts "Too Low"
    
    elsif answer > secret_number
      puts "Too High"

    else answer == secret_number
      puts "WIN"  
      break

    end

    puts "x: #{x}"
    x += 1

end









