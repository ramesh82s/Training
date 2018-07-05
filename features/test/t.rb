module Polindrome
def self.poly(word)
  reversedword = word.reverse
  reversedword == word ? (puts "Polindrome") : (puts "Not Polindrome")
end
end

Polindrome.poly('teet')