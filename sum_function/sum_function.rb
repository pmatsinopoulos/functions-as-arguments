# Write a function that will take a number as argument and return a new function that also takes a
# number: when the new function is called it returns the sum of its argument and the original number.

def add(number)
  Proc.new do |num|
    number + num
  end
end

higher_order_add = add(5)

puts higher_order_add.call(8) # prints 13


