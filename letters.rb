# require 'pry'
# # Write a script to get the number of occurrences of each letter in specified string.

# def count
#   @letters = Hash.new(0)
#   puts "Hey let's find how many times each letter shows up in your sentence"
#   input = gets.strip.downcase.split(' ')
#   input.each do |x|
#     wordsplit = x.split('')
    
#   end


#   input.each do |x|
#     @letters[x] += 1
#   end
  
#   @letters.each do |key, value|
#     puts "Ther letter #{key} is in your sentence #{value} times."
#   end

#   @letters.each do |y|
    
#   end


# end

count

# require 'pry'
# require 'colorize'

# def menu
#   print `clear`
#   puts "---Letters---".yellow
#   @entry = gets.strip
#   letter_check
# end

# def letter_check
#   most_repeats = ''
#   most = 0
#   words = @entry.split(/\W/)
#   words.each do |word|
#     letters = word.length
#     letters_uniq = word.split("").uniq.length
#     repeats = letters - letters_uniq
#     if repeats > most
#       most = repeats
#       most_repeats = word
#     elsif
#       repeats == most
#       most_repeats = most_repeats + ", " + word
#     end
#   end
#   if most == 0
#     puts "No words with repeated letters"
#   else
#     puts most_repeats + " has/have the most repeated letters."
#   end
# end

# menu


