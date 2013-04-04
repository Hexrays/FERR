
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################

# Hello other coders. I am Jeff and...
puts "Welcome to the Secret Number Game!"

first_name = "Jeff"
last_name = "Denton"
full_name = first_name + " " + last_name

puts "This game was created by #{full_name}!"
puts "What is your name player?"
player_name= $stdin.gets.chomp

# I like the random way better.
# set_of_numbers = [1,2,3,4,5,6,7,8,9,10]
# puts set_of_numbers.sample

secret_number = 1 + rand(10)
guesses_left = 3

messages = {
	win: "You guessed correctly!",
	lose: "You lose loser. The secret number was #{secret_number}.",
	too_low: "Your guess is less than the Secret Number",
	too_high: "Your guess is higher than the Secret Number."
}

puts "Greetings #{player_name}!"
puts "You have 3 guesses."


while guesses_left != 0 do
puts "Please pick a number between 1 and 10..."
guess = $stdin.gets.chomp.to_i
	if guess == secret_number
		puts messages[:win]
		break
	elsif guess > secret_number
		puts messages[:too_high]
		guesses_left -= 1
		puts "You have #{guesses_left.to_s} guesses remaining."
	elsif guess < secret_number
		puts messages[:too_low]
		guesses_left -= 1
		puts "You have #{guesses_left.to_s} guesses remaining."
	end
end

if guesses_left == 0
		puts messages[:lose]
else
	puts "Congratulations #{player_name}. You are a winner!"
end