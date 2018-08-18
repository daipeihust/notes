
File.open('file.txt', 'w') do |file| # 'w' denotes "write mode".
    file.puts 'Wrote some text.'
end                                  # File is automatically closed here

File.readlines('file.txt').each do |line|
puts line
end
# => Wrote some text.