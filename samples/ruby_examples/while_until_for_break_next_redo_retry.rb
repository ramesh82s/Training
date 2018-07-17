a = 3
while a < 4 and a > 2
  puts "Success1"
  a += 1
end
b=3
while b == 3
  puts "Success2"
  b+=1
end
c=1
until c==2
  puts "Success3"
  c+=1
end
d=1
for i in (0..3)
  puts "Success for"
end

for i in 0..5
  if i > 2 then
    break
  end
  puts "Value of local variable is #{i}"
end

for i in 0..5
  if i < 2 then
    next
  end
  puts "Value of local variable is #{i}"
end

for i in 0..5
  if i < 2 then
    puts "Value of local variable is #{i}"
    redo
  end
end

begin
  do_something # exception raised
rescue
  # handles error
  retry  # restart from beginning
end

# for i in 0..5
#   retry if i > 2
#   puts "Value of local variable is #{i}"
# end

x``