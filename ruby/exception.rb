
begin
    file = open("/unexistant_file")
    if file
        puts "File opened successfully"
    end
rescue
    file = STDIN
end
print file, "==", STDIN, "\n"



begin
    file = open("/unexistant_file")
    if file
        puts "File opened successfully"
    end
rescue
    fname = "existant_file"
    retry
end



begin  
    puts 'I am before the raise.'  
    raise 'An error has occurred.'  
    puts 'I am after the raise.'  
rescue  
    puts 'I am rescued.'  
end  
puts 'I am after the begin block.'



begin
    raise 'A test exception.'
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
ensure
    puts "Ensuring execution"
end



begin
    # 抛出 'A test exception.'
    puts "I'm not raising exception"
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
else
    puts "Congratulations-- no errors!"
ensure
    puts "Ensuring execution"
end



def promptAndGet(prompt)
    print prompt
    res = readline.chomp
    throw :quitRequested if res == "!"
    return res
end
 
catch :quitRequested do
    name = promptAndGet("Name: ")
    age = promptAndGet("Age: ")
    sex = promptAndGet("Sex: ")
    # ..
    # 处理信息
end
promptAndGet("Name:")