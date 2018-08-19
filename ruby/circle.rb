
# while
$i = 0
$num = 5
 
while $i < $num  do
   puts("在循环语句中 i = #$i" )
   $i +=1
end



# while qualifier
$i = 0
$num = 5
begin
   puts("在循环语句中 i = #$i" )
   $i +=1
end while $i < $num

$i = 0
$i += 1 while $i < $num
puts $i



# until
$i = 0
$num = 5
 
until $i > $num  do
   puts("在循环语句中 i = #$i" )
   $i +=1;
end



# until qualifier
$i = 0
$num = 5
begin
   puts("在循环语句中 i = #$i" )
   $i +=1;
end until $i > $num

$i = 0
$i += 1 until $i > $num
puts $i



# for
for i in 0..5
    puts "局部变量的值为 #{i}"
end



# break
for i in 0..5
   if i > 2 then
      break
   end
   puts "局部变量的值为 #{i}"
end



# next
for i in 0..5
   if i < 2 then
      next
   end
   puts "局部变量的值为 #{i}"
end



# redo
for i in 0..5
   if i < 2 then
      puts "局部变量的值为 #{i}"
      redo
   end
end



# retry
for i in 1..5 # 无限循环
   retry if  i > 2
   puts "局部变量的值为 #{i}"
end
 
begin
    # 抛出异常
rescue
    retry # 从begin重新开始
end