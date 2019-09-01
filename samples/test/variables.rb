# class Nested_methods
#   def m1
#     puts "hello"
#     def m2
#       puts "hi"
#     end
#   end
# end
# obj=Nested_methods.new
# obj.m1
# obj.m2
#################################################

# class A1
#   def m1
#     puts "Hello"
#   end
#
#   class B2
#     def m2
#       puts "Hi"
#     end
#   end
# end
# obj1 = A1.new
# obj1.m1
# obj2 = A1::B2.new
# obj2.m2
#
#
# module M1
#
#     puts "Hi"
#
#   class A1
#     def meth2
#       puts "Hello There!"
#     end
#
#   end
# end
# obj = M1::A1.new
#
# obj.meth2
#

# module M1
#    puts 'Hi'
#   module M2
#    puts 'Hello'
#     class A1
#       def meth
#         puts 'Saptambika'
#       end
#     end
#   end
# end
#
# obj=M1::M2::A1.new
# obj.meth


# class A1
#   def meth1
#     if 1 > 0
#       class A2
#         def meth2
#           puts "1 is greater than 0"
#         end
#       end
#     else
#       puts "invalid command"
#     end
#   end
# end
#
# obj1 = A1.new
# obj1.meth1
# obj2 = A1::A2.new
# obj.meth2
#
#
class Mammal
  def family_type
    puts "mammal animals"
  end
end

class Carnivorus
  def food_type
    puts "eat meat"
  end
end

class Cat < Mammal
  def family
    puts "Cats are Mammal"
  end
end

class Cat < Carnivorus
  def food
    puts "Cats are carnivorus"
  end
end

object = Cat.new
object.family_type
object.family
object.food_type
object.food

