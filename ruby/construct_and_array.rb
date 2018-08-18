
hash = { :water => 'wet', :fire => 'hot' }
puts hash[:fire] # Prints:  hot

hash.each_pair do |key, value| # Or:  hash.each do |key, value|
puts "#{key} is #{value}"
end

# Prints:  water is wet
#          fire is hot

hash.delete :water # Deletes :water => 'wet'
hash.delete_if {|k,value| value=='hot'} # Deletes :fire => 'hot'