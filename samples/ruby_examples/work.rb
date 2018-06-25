class Palindrome
  def self.check_palindrome(word)
    if word == word.reverse
      puts "Polindrome"
    else
      puts "Not a Polindrome"
    end
  end
end

Palindrome.check_palindrome('rameshhsemar')
word = 1
puts 'abc'.__id__
puts 'abc'.__id__
puts :abc.__id__
puts :abc.__id__
puts Palindrome.__id__
puts word.object_id
puts word.__id__

a = Palindrome.new
puts a.__id__
a = Palindrome.new
puts a.__id__
# puts obj.__id__
b = Object.new
puts b.__id__
puts self

puts Object.new.object_id
puts Object.object_id
puts Time.now