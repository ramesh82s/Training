a = 0
begin
  puts "Trying for #{a + 1} time"
  raise 'Exception Found'
  a += 1
  File.opn(test)
rescue
  puts "File could not be found"
  # retry if a < 5
else
  puts "successful execution"
ensure
  puts "Ensure part is eecuted"
end

begin
  puts 'I am before the raise.'
  raise 'An error has occurred.'
  puts 'I am after the raise.'
rescue Exception => e
  puts e.message
  puts 'I am rescued.'
end
puts 'I am after the begin block.'