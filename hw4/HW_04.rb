###############################################################################
#
# Student's Solution
#
###############################################################################


puts "Welcome to the Secret Number Game!"

first_name = "Jeff"
last_name = "Denton"
full_name = "#{first_name} #{last_name}"

puts "This game was created by #{full_name}!"
puts "What is your name player?"
player_name= $stdin.gets.chomp

secret_number = 1 + rand(10)
attempts = 0

def increment_guess_count(int)
	int += 1
end

def guesses_left(guess_number)
	guesses = 3 - guess_number
	puts "You have #{guesses} guesses remaining"
end

messages = {
	win: "You guessed correctly!",
	lose: "You lose loser. The secret number was #{secret_number}.",
	too_low: "Your guess is less than the Secret Number",
	too_high: "Your guess is higher than the Secret Number."
}

puts "Greetings #{player_name}!"
puts "You have 3 guesses."


while attempts < 3 do
	puts "Please pick a number between 1 and 10..."
	guess = $stdin.gets.chomp.to_i
	attempts = increment_guess_count(attempts)
	if guess == secret_number
		puts messages[:win]
		break
	elsif guess > secret_number
		puts messages[:too_high]
		guesses_left(attempts)
	elsif guess < secret_number
		puts messages[:too_low]
		guesses_left(attempts)
	end
end

if attempts == 3
		puts messages[:lose]
else
	puts "Congratulations #{player_name}. You are a winner!"
end