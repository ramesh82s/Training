# class Triangle
#   def types_of_triangle(ab, bc, ac)
#     if (ab==bc and ab==ac)
#       puts "given triangle is Eqilateral"
#     elsif ((ab==bc and ab!=ac) or (ab==ac and ab!=bc) or (bc==ac and bc!=ab))
#       puts "given triangle is isoscelus"
#     else
#       puts 'given triangle is scalene'
#     end
#   end
# end
#
# obj=Triangle.new
# obj.types_of_triangle(5,5,5)
# obj.types_of_triangle(5,5,6)
# obj.types_of_triangle(1,2,3)


# def foo(a,*b)
#   puts a
#
# end
# foo(1,2,3,4)



# class Volume
#   attr_accessor :area
#   puts '1'
#   def find_volume(l,b,h)
#     volume = l*b*h*@area
#   end
#   puts 1
# end
# obj = Volume.new
# obj.area=(10)
# puts obj.area
# puts obj.find_volume(1,2,3)

# (5..8).each_with_index do |val,i|
#   puts "#{i} #{val}"
# end

# n=[3,89,40,39,29,10,50,100,69]
# num=n.inject do |i,j|
#   i > j ? i : j
# end
# p n
# p num
#
class Foo
  @@num=0
  def self.count
    @@num=@@num+1

  end
end

class Bar < Foo

end

puts Foo.count
puts Bar.count
