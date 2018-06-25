if 123 == 123
  puts ''
end
if 'lla123' =~   /^.+A123$/i
  puts "Matches"
else
  puts "Doesn't Match"
end

module Pali
  def self.palindrome(data="test")
      data.downcase == data.downcase.reverse ? (puts "Palindrome") : (puts "Not a Palindrome")
      # puts "Palindrome"
      # else "Not a Palindrome"
      # end
  end
end
Pali.palindrome("ramar")

25%5 == 0 ? (puts "Divisable") : (puts "Not Divisable")
puts 26.modulo(6)