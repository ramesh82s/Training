# puts rand(0 or 9)
@a = 1
# @a.instance_variable_defined?
# a ='43219-1234'
# p a.gsub('/-1234/','')
# a = '1'
# p a.rjust(2,'0')


puts ('a'..'z').to_a.shuffle[0,4].join
# puts ('AR','BR').to_a.shuffle[0,2].join
# puts rand('a'..'b').to_s
@@aaaa='amesh'
class A
  def initialize (test)
    puts @@aaaa
    @test=test
    puts @test
  end
  def one(*var)
    puts var.join(" ")
  end
  A.new("hi123").send("one".to_sym,"Test Send Functionality","Differen Format")
  # puts self
   puts self.class
end
puts.class
puts 1.class
puts self.class

class Test

  # self.one
  key="dynamic_method1"
  value= "success"
  define_method(key) {value}

  def one
    puts :one
  end
  Test.new.one
  # key="dynamic_method"
  # value= "success"
  # define_method(key) {value}

  def create_method(key, &block)
    self.class.send(:define_method, key, &block)
  end
  def two
    one
    puts :two
    def three
      puts 'Three'
    end
    Test.new.three
    create
    puts dynamic_method1
    # key="dynamic_method1"
    # value= "success"
    # create_method(key) {value}
  end
  def create
    @key="dynamic_method1"
    @value= "success"
    create_method("#{@key}123") {@value}
  end
  Test.new.two
  self.new.one
  puts :class_display
  puts self
end

 obj=Test.new
 obj.two
 puts obj.dynamic_method1
 obj = A.new("test")
 obj2=Test.new
  # obj2.two
   puts obj2.dynamic_method1123
 # puts obj.dynamic_method1

 # obj.three
# obj.two
#  obj.three
# #  obj.one