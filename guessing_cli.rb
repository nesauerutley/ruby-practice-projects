# Code your solution here!
def run_guessing_game
  loop do
    puts "Guess a number between 1 and 6."
    random_number = rand(0..6).to_s
    input = gets.chomp
    if input == "exit"
      puts "Goodbye!"
      break
    elsif input != random_number
      puts "The computer guessed #{random_number}."
    elsif input == random_number
      puts "You guessed the correct number!"
    end
  end
end
