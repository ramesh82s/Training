str = "This is my string having vowels"

puts str.gsub(/[a e i o u]/,'9')

puts "   test   ".rjust(200,'123455555')
p 10.times.to_a

puts "hello".casecmp("hellO")
puts "hello".insert(1,"ramesh")
puts '123'.length

p "hello" <=> "hello"
p "hello" <=> "hello1"
p "hello1" <=> "hello"
p "hello1" === "hello"
p 'a'<<'b'