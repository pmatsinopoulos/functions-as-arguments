# 2. Write a function "isEven" which will return true if given an even number as an argument or false
# otherwise. Now write a function that will filter a list of numbers returning just the even numbers.

def isEven(number)
  number % 2 == 0
end

def filter_even_numbers(list)
  list.select {|list_item| method(:isEven).call(list_item) }
end

puts filter_even_numbers([1, 2, 3, 4, 5, 6]) # prints 2, 4, 6
