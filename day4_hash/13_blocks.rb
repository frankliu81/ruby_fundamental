# how blocks work underneath the hood

def greetings
    puts "Hello"
    yield # this will execute the block passed to the method

    # block given? will be true if you call the method with a block
    # if block_given?
    #   yield
    # else
    #   puts "No block was provided!"
    # end
    #

    puts "bye"
end

# the yield is as if you have injected the code into greetings
greetings do
    puts "I'm here in the block"
end

greetings do
    puts "I'm here in another block"
end


greetings do
    puts "I'm in the third block"
end

# error no block given
# you need yield if block_given?
greetings
