# The "method(<....>)" allows us to instantiate Method objects,
# i.e. function objects on the fly. The function instantiated is
# the function that matches the name we give as argument to the "method(...)" call.
# With the result of "method(...)" at hand, we can then call ".call(....)" and
# it is essentially calling the method passing as argument(s) the arguments we give
# to the "call(...)"
# For example, if you have defined the method "foo" as follows:

def foo(number1, number2)
  number1 + number2
end

# which returns the sum of two numbers. We have three ways to call it:

# Call example 1:
result = foo(5, 3)

puts result # prints 8

# or we can dynamically call it with Method:

a_method_object = method(:foo)
result = a_method_object.call(5, 3)

puts result # prints 8

# or, method 3, we can just call ".(...)"

a_method_object = method(:foo)
result = a_method_object.(5, 3)

puts result # prints 8


