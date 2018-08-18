#!/usr/bin/ruby
 
puts "main program"
 
BEGIN {
   puts "begin program"
}

END {
    puts "end program"
}

# => begin program
# => main program
# => end program
