# We define a function as a public function
# that checks whether the argument is an even number
# or not.
#
def self.even(number)
  number % 2 == 0
end

# We define a function as a public function
# that checks whether the argument is a string with
# all letters lowercase. The trick here is that we
# have to define them as `self` so that we can then
# be able to call them with `public_send` from within
# "hasMatch()"
#
def self.lower_case(string)
  string.downcase == string
end

# We define the function hasMatch() that takes as argument
# the name of the function to call. With the help of "public_send"
# we can call that function.
#
def hasMatch(function_name, list)
  list.any? {|list_item| public_send(function_name, list_item)}
end

puts hasMatch(:even, [4, 6, 8]) # prints true
puts hasMatch(:even, [5, 7, 9]) # prints false
puts hasMatch(:lower_case, ['foo', 'BAR']) # prints true
puts hasMatch(:lower_case, ['FOO', 'BAR']) # prints false

