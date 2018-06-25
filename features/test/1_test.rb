require 'yaml'
# puts "Executing #{__FILE__}"
# a=[1,2,3,4]
# 5.times do|i=5|
#   puts i
# end

#  a = "how are you1"
# if a =~ /^(.*)are1(.*)$/
#   puts "true1"
# else
#   puts "false"
# # end
# #
#  i=[1, 2, 3]
#  5.times do |a,b|
#     puts a
#     puts b
#     # puts 'Hi'
#  end

begin
 raise 'a 1 test exception'
# raise 'a 2 test exception'
rescue Exception => e
  puts e.message
  # puts Exception.new.backtrace.index
else
  puts "no exception!!!!!"
end
if false
  puts 'hi'
end

 a=%w{ramesh babu?}
 puts a[-1].gsub('?','')
 puts "Hi #{a}"
p a

# begin
#   file = 2
#   if file
#
#     puts "file opned successfully"
#
#   end
#     raise "Raise"
# # rescue
# #   puts "rescue 1 is executing"
#   # retry
# ensure
#   puts "ensure is executing"
#   # retry
# end

# require 'yaml'
#      puts  YAML.load(File.open("C:/OAO_Testing/features/rol_login_page_data.yaml"))
#      h = YAML.load(File.open("C:/OAO_Testing/features/rol_login_page_data.yaml"))
# h.each do|k1,v1|
#   puts "Key1 #{k1}"
#   puts "Value1 #{v1}"
#   v1.each do |k2,v2|
#     puts "Key2 #{k2}"
#     puts "Value2 #{v2}"
#   end
# end

    class Klass
      def hello(*args)
        puts args
        a = "Hello " + args.join('/')
        puts a
      end
    end
    k = Klass.new
     k.send("hello".to_s, "gentle", "readers", "how are you")   #=> "Hello gentle readers"
    # k.hello("gentle", "readers", "how are you")

class Test
  def print_name
    puts "Ramesh"
    puts "hi"
    print_name = "print_name"
    print_name
  end
  def self.print_phone
    puts "614 632 0196"
    # self.print_name
  end
  print_phone
  # print_name
end
obj=Test.new
obj.print_name
Test.print_phone

puts %w{test
test2}