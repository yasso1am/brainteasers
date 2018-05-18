require 'pry'
#  create an array
# create a menu
# ask for user input
# put user input into array
# ask how they want their values returned (high or low)
# sort through the array by high and low
# output the value
# exit
@user_array = []

def user_input
puts "Please enter the numbers you would like us to sort through"
  user_numbers = gets.strip
  values = user_numbers.split(" ").map { |x| x.to_i }
    # values.each do |value|
    #   puts value
    # end
  @user_array << values
  menu
end

def menu
  puts "1) If you want to find the highest number"
  puts "2) If you want the find the lowest number"
  puts "3) Add more numbers"
  puts "4) See your numbers"
  puts "5) Exit"
    menu_choice = gets.strip.to_i
  case menu_choice
    when 1
      sort_highest
    when 2
      sort_lowest
    when 3
      menu
    when 4
      puts @user_array
    when 5
      puts "Thanks for playing, goodbye!"
      exit
    else
      "Invalid entry, try again"
    end
    menu
end


def sort_highest
  highestnumber = @user_array[0][0]
  @userarray[0].each do |numbercheck|
    if numbercheck > highestnumber
      highestnumber = numbercheck
    end
end
puts "The highest number is #{highestnumber}"
  @user_array.clear
end

def sort_lowest
  highestnumber = @user_array[0][0]
  @userarray[0].each do |numbercheck|
    if numbercheck < highestnumber
      highestnumber = numbercheck
    end
end
puts "The highest number is #{highestnumber}"
  @user_array.clear
end




user_input
