# class A
#   def self.m1
#     i = 2
#     num = 10
#     prim_ind = 0
#     while i > num - 1
#       if num % i == 0
#         prim_ind = 1
#       else
#         i = i + 1
#       end
#     end
#     if prim_ind == 1
#       puts "#{num} is not a prime"
#     # elsif (num % 1 == 0 && num % num == 0 and prim_ind == 0)
#     #   puts "#{num} is a prime"
#     # else
#     #   puts "invalid validations"
#     end
#   end
# end
# A.m1
#
#
#
class A
  def self.m1
    integer = 10
    prim_ind = 0
    (2..integer - 1).each do |x|
      if (integer % x) == 0
        prim_ind = 1
      end
    end
    if prim_ind == 0
     puts "is a prime number"
    else
      puts "is a not prime number"
    end
  end
end
A.m1
