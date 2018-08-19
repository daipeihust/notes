
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