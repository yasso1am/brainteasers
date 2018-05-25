require 'pry'
# take in user input
# break their input up into all of the possible combinations 
# this will involve creating an array
# output those combinations to the screen


def combo(array, combos)
  puts array if combos == array.size
  (combos..array.size - 1).each do |switch|
    array[combos], array[switch] = array[switch], array[combos]
    combo(array, combos+1)
    array[combos], array[switch] = array[switch], array[combos]
  end
end

combo('dad', combos = 0)

# def permutations(array, index=0)
#   p array if index == array.size
#   (index..array.size-1).each do |swap|
#     array[index], array[swap] = array[swap], array[index]
#     permutations(array, index+1)
#     array[index], array[swap] = array[swap], array[index]
#   end
# end