require 'pry'
#create menu
#take in user input
#check the user input for palindrome
#if palindrome say yes
#if not say no
#erase and start again

def start 
  puts 'Welcome to the Palindrome checker'
  puts 'Examples are "Racecar", "Mom", and "Tacocat"'
  puts 'Check if your word is a palindrome by entering it below'
  puts '>>> '
  string = gets.strip.downcase
    @split_string = string.split('')
  check
end

def check
  reversedword = []
  @split_string.each do |letter|
    reversedword.unshift(letter)
    # letter = @split_string.pop
    # reversedword << letter
  end
  # binding.pry
    if reversedword == @split_string

      puts "word checks out"
    else
      puts "not a palindrome"
    end
    start
  end

  start

  
#   @userword << user_input.downcase.split('')


#    case @userword
#    when @userword[0].first == @userword[0].last
#       puts "Your word checks out!"
#     else
#       puts "Sorry, invalid selection - try again"
#       puts
#     end
#   start
# end
# start

# def pop
#   @split_string.pop