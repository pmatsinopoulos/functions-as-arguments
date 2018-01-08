# We define a function as a public function
# that checks whether the argument is an even number
# or not.
#
def even(number)
  number % 2 == 0
end

# We define a function as a public function
# that checks whether the argument is a string with
# all letters lowercase.
#
def lower_case(string)
  string.downcase == string
end

# We define the function hasMatch() that takes as argument
# the name of the function to call. With the help of "method"
# we can call that function: We instantiate a Method object
# and then we call the method "call()" on it.
#
def hasMatch(function_name, list)
  list.any? {|list_item| method(function_name).call(list_item)}
end

puts hasMatch(:even, [4, 6, 8]) # prints true
puts hasMatch(:even, [5, 7, 9]) # prints false
puts hasMatch(:lower_case, ['foo', 'BAR']) # prints true
puts hasMatch(:lower_case, ['FOO', 'BAR']) # prints false

