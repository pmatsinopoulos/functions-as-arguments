# Exercise:
#
# 1. Define a function taking a number as argument and returning its double: show how to double every
# number in a list.
#
# We define a function that doubles a number
#
def double(number)
  number * 2
end

# We then use that function to double the elements of a list
#
puts [1, 2, 3].map {|x| method(:double).call(x) }
