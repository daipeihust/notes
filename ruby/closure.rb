
# create closure
{ puts "Hello, World!" } # Note the { braces }
{ |value| puts "Hello, #{value}!"}
#or
do puts "Hello, World!" end
do |value| puts "Hello, #{value}!"



# use closure
# In an object instance variable (denoted with '@'), remember a block.
def remember(&a_block)
    @block = a_block
end
  
# Invoke the above method, giving it a block which takes a name.
remember {|name| puts "Hello, #{name}!"}

# When the time is right (for the object) -- call the closure!
@block.call("Jon")
# => "Hello, Jon!"



# return closure from function
def create_set_and_get(initial_value=0) # Note the default value of 0
    closure_value = initial_value
    return Proc.new {|x| closure_value = x}, Proc.new { puts closure_value }
end

setter, getter = create_set_and_get  # ie. returns two values
setter.call(21)
getter.call # => 21



# yield
def test
    puts "在 test 方法内"
    yield
    puts "你又回到了 test 方法内"
    yield
 end
 test {puts "你在块内"}

# => 在 test 方法内
# => 你在块内
# => 你又回到了 test 方法内
# => 你在块内


def test
    yield 5
    puts "在 test 方法内"
    yield 100
end
test {|i| puts "你在块 #{i} 内"}

# => 你在块 5 内
# => 在 test 方法内
# => 你在块 100 内



# pass closure to function
def test(&block)
    block.call
end
test { puts "Hello World!"}