# Using a Proc object, we define a function that
# checks whether the given argument is even or not
#
even = Proc.new do |number|
  number % 2 == 0
end

# Use a Proc object, we define a function that
# checks whether the given argument is all lower case
# or not
#
lower_case = Proc.new do |string|
  string.downcase == string
end

# Returns "true" if any of the items in the list
# returns "true" for the function argument. Note that the
# function argument needs to be a Proc object.
#
# It is polymorphic because it works for any type of list
# items, e.g. numbers, strings e.t.c.
#
# The trick here is to call the function by calling ".call(...)"
# on the argument "function".
#
def hasMatch(function, list)
  list.any? {|list_item| function.call(list_item)}
end

puts hasMatch(even, [4, 6, 8]) # prints true
puts hasMatch(even, [5, 7, 9]) # prints false
puts hasMatch(lower_case, ['foo', 'BAR']) # prints true
puts hasMatch(lower_case, ['FOO', 'BAR']) # prints false
