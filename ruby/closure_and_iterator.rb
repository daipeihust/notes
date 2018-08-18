
# iterate with closure
def use_hello
    yield "hello"
end

# Invoke the above method, passing it a block.
use_hello {|string| puts string} # => 'hello'



# iterate array with closure
array = [1, 'hi', 3.14]
array.each { |item| puts item }
# => 1
# => 'hi'
# => 3.14

array.each_index { |index| puts "#{index}: #{array[index]}" }
# => 0: 1
# => 1: 'hi'
# => 2: 3.14

(3..6).each { |num| puts num }
# => 3
# => 4
# => 5
# => 6