require 'multi_json'
require 'json'

# a = MultiJson.load('{"abc":"123","def":"345"}') #=> {"abc" => "def"}
puts my_hash = JSON.parse('{"hello": "goodbye"}')
puts my_json= JSON.generate(my_hash)

# puts a['abc']
# puts a['def']
MultiJson.load('{"abc":"def"}', :symbolize_keys => true) #=> {:abc => "def"}
MultiJson.dump({:abc => 'def'}) # convert Ruby back to JSON
MultiJson.dump({:abc => 'def'}, :pretty => true) # encoded in a pretty form (if supported by the coder)

module TestModule
  CONS1 = 'Hi'
  # CONS1 = 'Hi123'
  def display1
    puts "Display from Module1"
  end
end

module TestModule
  def display2
    puts "Display from Module2"
  end

end

class TestClass

  extend TestModule
    # TestModule.display1
  # display1
end
puts TestModule::CONS1
obj=TestClass.new
# obj.display1
# obj.display2

TestModule::CONS1
# TestModule.display1
TestClass.display1
TestClass.display2