scoring_card = Hash.new    #use hash to create new list, list from user input
                           #new hash put outside of loop so can keep the score
loop do
  puts "Hello whats your name?"
  player_name = gets.chomp
  puts "Hello #{player_name}"

  secret_number = rand(100)
  puts secret_number
  puts "Insert any number from 1 to 100"

  # while loop method, x means number of tries

  tries = 1 
  guessed = []

  while tries <= 5
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

    guessed << answer

    puts "guessed: #{guessed}"
    puts "tries: #{tries}"
    tries += 1 
  end

  scoring_card[player_name] = tries
      
  scoring_card.each do |tries| 
    puts scoring_card.sort_by(&:last) #sort by values low to high 
    puts "#{tries}"
  end    

  puts "Do you want to play again? y/n " 
  play = gets.chomp.downcase

  if play != "y"  #this part means if answer is not y, the loop continue on new game
    break 
  end
end







