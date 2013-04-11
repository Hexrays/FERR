class Game
#	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  attr_reader :guesses_allowed, :current_guess_count, :current_guess

  @@messages = { win: "You won! You're a number and nose picking genius!",
                 lose:  "You lost loser.",
                 too_low: "Your guess was too low!",
                 too_high: "Your guess was too high!",
                 idiot: "Your guess was way to high stupid." }


	# Initializes The number of guesses (or tries) a player is allowed before the game ends.
	# You should default number of guesses to 3 if the parameter is null.
	# Sets a guess counter to zero.
	# Creates a new instance of the Player class. 
	# Creates a new instance of the SecretNumber class and assigns it to the secret_number. Don't forget to pass along the
	# necessary parameters.
  	# initializes the current guess to nil
  def initialize(guesses_allowed = 3, set_of_numbers = 10 )
    @guesses_allowed = guesses_allowed
    @current_guess = current_guess
    @current_guess_count = 0
    @player = Player.new
    @secret_number = SecretNumber.new(set_of_numbers)
    @the_creator = "Jeffd"
  end
  

  # Print who made this wonderful program :-)
  def print_created_by
    "This wonderful program was made by #{@the_creator}."
  end
  

	# Calls `print_created_by` so that your players knows you created the game.
	# Asks the player to enter his/her name. Save it to @player.name.
	# Print out the number of guesses the players gets and the range of numbers they can choose from.
	# Asks the player for his/her guess. Use the `guess_correct?` method to verify the guess.
	# Continue to ask the user to guess the number so long as they have not maximized the number of guesses allowed 
	# and they did not guess correctly. 
  # Each time tell the player how many guesses left they have.
	# If at the end of the loop they still did not guess correctly, tell the player that they have lost using the
	# `@@messages` class variable and tell them the secret number.
  def start_game
    puts print_created_by
    puts "Tell us your name player..."
    @player.name = $stdin.gets.chomp
    puts "Welcome to the number guessing game #{@player.name}."
    puts "You have #{@guesses_allowed} guesses to figure this out."
    while @current_guess_count < @guesses_allowed
      puts "Please pick a number between 1 and #{@secret_number.set_of_numbers}..."
      @current_guess = $stdin.gets.chomp.to_i
      guess_correct?(@current_guess)
      @current_guess_count = increment_guess_count(@current_guess_count)
      guesses_left(@current_guess_count)
    end
    puts @@messages[:lose]
  end


	# This method checks if the player guessed the correct secret number. 
  # It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  def guess_correct?(guess)
    if guess == @secret_number.secret_number
      puts @@messages[:win]
      exit
    elsif guess > @secret_number.set_of_numbers
      puts @@messages[:idiot]
    elsif guess > @secret_number.secret_number
      puts @@messages[:too_high]
    elsif guess < @secret_number.secret_number
      puts @@messages[:too_low]
    end
  end


  # This method should increment every time the player guesses incorrectly.
  def increment_guess_count(guess)
    guess += 1
  end
  

  # Calculates the guesses the player has left.
  def guesses_left(guess_number)
    guesses = @guesses_allowed - guess_number
    puts "You have #{guesses} guesses remaining"
  end
end

