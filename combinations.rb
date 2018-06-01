require 'pry'
# take in user input
# break their input up into all of the possible combinations 
# this will involve creating an array
# output those combinations to the screen


def combo(str, combos = 0)
  puts str if combos == str.size
  (combos..str.size - 1).each do |switch|
    str[combos], str[switch] = str[switch], str[combos]
    combo(str, combos+1)
    str[combos], str[switch] = str[switch], str[combos]
  end
end

combo('dog')


# def brain_teaser(word)
#   a = 0
#   b = 0
#   while a < word.length
#     b = a
#     while b < word.length
#       print (word[a..b])
#       print (", ")
#       b += 1
#     end
#     a += 1

#   end
#   word = word.reverse
#   a = 0
#   b = 0
#   while a < word.length
#     b = a
#     while b < word.length
#       print (word[a..b])
#       print (", ")
#       b += 1
#     end
#     a += 1
#   end
# end

# brain_teaser("dog")
