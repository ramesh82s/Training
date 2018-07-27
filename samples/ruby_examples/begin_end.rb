puts "this is main program"
END {puts "ths is end of the program"}
BEGIN {puts "this is starting of the program"}
=begin
this a 1 coment
this is 2nd comments
=end
begin
  raise 'Testing the raise'
rescue Exception => e
  puts e.message
else
  puts "No Exception Raised"
end