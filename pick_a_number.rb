# Checks to see if player wants to play again
def play_again
  puts 'would you like to play again? please answer in a  y/n  format only '
  wants_to_do_it_again = false
  answer = gets.chomp
  if answer == 'y'
    wants_to_do_it_again = true
  else answer == 'n'
  puts 'Ok then, see ya next time'
  end
  # return boolean (if they want to play again or not)
  wants_to_do_it_again
end

def play_game
  puts 'Thinking of a number between 1 and 10, I will give you 5 tries to get it!'
  number = rand(1...100)
  puts number
  win = false
  guess_taken  = 0

  while guess_taken < 6
    puts 'pick a number'
    pick = gets.chomp.to_i
    guess_taken += 1
    if pick > number
      puts 'too high'
    elsif pick < number
      puts 'too low'
    end
  end

  if   pick == number
    win = true
    puts "Congrats! Yes the number is #{number}!"
  else pick != number
  win = false
  puts "sorry the number was #{number}"
  end
end


def main
  # create local variable that determines if player wants to keep laying or not
  # set it to true at first so that the while loop below will execute at least once
  play_more = true

  # while the player still wants to play, keep looping. This is guaranteed to
  # happen at least once because play_more is always equal to true at first
  while play_more == true
    # play the game - no code changed inside this function
    play_game

    # ask the player if they want to play again. If they do, this play_again function
    # will return true - so the while loop will go again
    # if they don't then the while loop will exit and the program is over
    play_more = play_again
  end

end


main








