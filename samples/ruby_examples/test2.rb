
def sample (* test)
  puts "The num ber of param eters is #{test.length}"
  for i in 0...test.length
    puts "The param eters are #{test[i]}"
  end
end

sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"


# a='12345-1234   '
# b=4
# puts b[1]
# # puts "true" if a =~ /#{b}(.*)/
# #  puts a.gsub("-#{/(.*)/}",'')
# p a.rstrip.gsub(/-(.*)/,'')

# puts a[0..4]
# p '123'

# # project_dir = File.join(File.dirname(__FILE__), '..', '..')
# # puts project_dir
# # puts File.join(File.dirname(__FILE__),'test','test2')
#  puts __FILE__
# # puts File.join('test','test2')
# # puts $LOAD_PATH.unshift('test')
# puts Time.now.strftime "%Y-%m-%d_%H-%M-%S"
#

# first_name = 'a'
# middle_initial= 'b'
# last_name= 'c'
# suffix= 'd'
#
# puts first_name+' '+middle_initial+' '+last_name+' '+suffix

# puts '12345-1234'.gsub('-(.*)','')



# text = 'Matthew "Matt" Perry'
#
# puts text.tr(%q{"M}, '') # => "Matthew |Matt| Perry"
# puts text.gsub('"','')

#  a='1'
#  puts a.rjust(3,'0')
# i=1
# file = "file_" + i.to_s.rjust(5, "0")
# puts file

# a="COLUMBUS OH 43219-6010       "
# puts a.to_s.rstrip[0..-6]
#
# puts "COLUMBUS OH 43219-6010       "[0..-6]
#
# class State2
#   def self.get_2_gigit_state(state)
#   case state
#     when "Ohio"; state='OH'
#     when "Illinois"; state = "IL"
#   end
#   end
# end
# @st = "Ohio"
# puts State2.get_2_gigit_state(@st)

# # puts "hi1"; puts "hi2"
# puts"\nRmaesh"
# puts"Rmaesh"
#
# value = "key"
# 1.to_s
# "#{value}".to_s
# # puts key
#


# a='abc'
# puts #{a}

   # class A
   #   def fred
   #     puts "In Fred"
   #   end
   #   def create_method(name, &block)
   #     # self.class.send(:define_method, name, &block)
   #     self.class.send(:define_method, name, &block)
   #   end
   #   # define_method(:wilma) { puts "Charge it!" }
   # end
   # class B < A
   #   define_method(:barney, instance_method(:fred))
   # end
   #  a = B.new
   #  a.barney
    # a.fred
   # a.wilma
   # # a.create_method("betty") {p self}
   #  a.create_method(:betty) { p self }
   #  a.betty

# a = "ramesh".to_sym
# puts a
# puts a.object_id
# a=5
# puts a.object_id
# puts :ramesh.object_id
# puts object_id
#
class Test
  puts "Class Display"

  def display
    @s="Rameshs"
    puts "Class Def Display"
    # self.class.dynamic_method
    valus = 5
        # self.class.send(:defin_method, {&value})
  end
  name='dynamic_method'
  value=51
  # puts "5"
   define_method(name) {value}
end
# puts $a
# puts @@a

  o = Test.new
 o.display
puts o
    puts o.dynamic_method
 # puts o.dynamic_method
# puts o.s
#
#
#
# # puts @a
# puts self
# puts defined? @a
# # puts self.class
# # puts self.ie
# # Test.new.display2
#
