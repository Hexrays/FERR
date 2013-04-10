###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 04
#
# Purpose:
#
# Read the steps below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#
# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
#
# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 
#
# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#
# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################


# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
def increment_guess_count(int)
	int -= 1
	puts "You have #{int} guesses remaining"
	int
end


# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 

def guesses_left(number_of_guesses)
	number_of_guesses = 3 - number_of_guesses
	puts "You have #{(number_of_guesses).to_s} guesses remaining."
end


increment_guess_count(3)
increment_guess_count(guesses)

class Guesser
attr_accessor :name, :guesses

def initialize(name)
@guesses = 3
end

def increment_guess_count
@guesses -= 1
puts "You have #{(number_of_guesses).to_s} guesses remaining."
end
end




