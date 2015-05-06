## May 6, 2015 Homework Assignment
## Hangman Program
## Features:
## Provide greeting for the user
## Provide a prompt that tells the user the partially completed word 
## Provide input validation to check for blank input 
## Provide number of remaining turns to user
## Provide a game over state that that displays whether the user won or lost and returns the word that they were trying to guess

# Include line to require Pry and Set Library
require 'Pry'
require 'Set'

# User Greeting
puts "Welcome to Hangman."
puts "Solve the game by entering letters into the spaces provided. You'll get 7 chances to win before you HANGMAN."
puts "Ready? Let's play."

# Word List
word_list = ["cookies", "kittens", "fairies",
             "words", "linux", "lisp", "music",
             "songs","beer", "love", "fun",
             "code", "cease", "and", "desist",
             "read", "print", "eval", "loop",
             "macro", "ruby"]

turn_count = 7
guesses = Set.new

def intermediate_word(answer, guesses)
  #answer.each_char { |l| guesses.include?(l) ? print l : print "-" }
  answer.each_char do |letter|
    #guesses.include?(letter) ? print letter : print "-"
    if guesses.include?(letter)
      print letter
    else
      print "-"
    end
  end
  puts
end

def word_complete?(word, guessed_letters)
  guessed_letters == word.chars.to_set
end

# Tell the user the partially completed word
def partial_word(answer, guessed_letters)

# Include Pry in the program where you want to debug
binding.pry