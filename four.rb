require 'pry'
require 'to_words'

def magic
  puts 'Please input a number'
  input = gets.strip.to_words.capitalize
  loop do
   puts  "#{input} is #{input.gsub(' ', '').length.to_words}"
    if input.length.to_words.capitalize == "Four"
      puts "...and Four is the magic number"
      break
    else 
      input = input.gsub(' ', '').length.to_words.capitalize
    end
  end
end

magic