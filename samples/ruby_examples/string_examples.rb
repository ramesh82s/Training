p '9'.to_c                      #=> (9+0i)
p 'Ruby1'.to_c                  #=> (0+0i)
# p 'Ruby'.unpack('a3a3')       #=> explore
p '  300/2  '.to_r              #=> (150/1)
p String.try_convert("ruby")    #=> "ruby"
p String.try_convert(:ruby)     #=> nil
p String.try_convert(/re/)      #=> nil
p String.new(a="Ruby")          #=> "ruby"
p "Ruby1" <=> "Ruby"            #=> 1
p "Ruby" <=> "Ruby"             #=> 0
p "Ruby" <=> "Ruby1"            #=> -1
p "Ruby1" == "Ruby"             #=> false
p "Ruby" == "Ruby"              #=> true
p :Ruby.eql?(:Ruby)       #=> true
p "Ruby".hash()                 #=> 556606984
p "aBcDeF".casecmp("abcdef")    #=> 0
p "abcdef".casecmp("abcdefg")   #=> -1
p "abcdef".casecmp("ABCDEF")    #=> 0
p "Hello from " + self.to_s     #=> "Hello from main"
p "Ho! " * 3                    #=> "Ho! Ho! Ho! "
p "Ho! " * 0                    #=> ""
p "%05d" % 123                  #=> "00123"
p a = "hello there"
p a[1]                          #=> "e"
p a[2, 3]                #=> "llo"
p a[2..3]                #=> "ll"
p a[-3, 2]               #=> "er"
p a[7..-2]               #=> "her"
p a[-4..-2]              #=> "her"
p a[-2..-4]              #=> ""
p a[11, 0]               #=> ""
p a[11]                  #=> nil
p a[12, 0]               #=> nil
p a[12..-1]              #=> nil
p a[/[aeiou](.)\1/]      #=> "ell"
p a[/[aeiou](.)\1/, 0]   #=> "ell"
p [/[aeiou](.)\1/, 1]   #=> "l"
p a[/[aeiou](.)\1/, 2]   #=> nil
p a[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "non_vowel"] #=> "l"
p a[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "vowel"]     #=> "e"
p a["lo"]                #=> "lo"
p a["bye"]               #=> nil
p a[1]= 'E'
p a                      #=> "hEllo there"
p "Ruby".insert(0,"OOP in ") #=> "OOP in Ruby"
p :RubyRuby.length()     #=> 8
p :RubyRuby.size()       #=> 8
p "Ruby".bytesize()      #=> 4
p "Ruby".empty?          #=> false
p "".empty?              #=> true
p "cat o' 9 tails" =~ /\d/   #=> 7
p "cat o' 9 tails" =~ 9      #=> nil
p 'hello'.match('(.)\1')      #=> #<MatchData "ll" 1:"l">
p 'hello'.match('(.)\1')[0]   #=> "ll"
p 'hello'.match(/(.)\1/)[0]   #=> "ll"
p 'hello'.match('xx')         #=> nil
p "abcd".succ!        #=> "abce"
p "abcd".next!        #=> "abce"
p "9".upto("11").to_a   #=> ["9", "10", "11"]
p "25".upto("5").to_a   #=> []
p "07".upto("11").to_a  #=> ["07", "08", "09", "10", "11"]
p "hello".index('lo')            #=> 3
p "hello".index('a')             #=> nil
p "hell1h".rindex('h')           #=> 5
p "Ruby".replace("OOP")          #=> "OOP"
p "Ruby".clear                   #=> ""
p "Ruby".chr                     #=> "R"
p "Ruby".getbyte(0)        #=> 82
p "hello".byteslice(1)     #=> "e"
p "hello".byteslice(-1)    #=> "o"
p "hello".byteslice(1, 2)  #=> "el"
p "123.12".to_i(base=10) #=> 123
p "123.12".to_f             #=> 123.12
p "Ruby".to_str             #=> "Ruby"
p "Ruby".to_s               #=> "Ruby"
p "ruby".upcase!            #=> "RUBY"
p "RUBY".downcase!          #=> "ruby"
p "rUBY".swapcase!          #=> "Ruby"
p "RUBY".capitalize!        #=> "Ruby"
p "1,2,,3,4,,".split(',')         #=> ["1", "2", "", "3", "4"]
p "Ruby".reverse!           #=> "ybuR"
p "Hello" << " world"   #=> "hello world"
p "ruby oop".to_sym     #=> :"ruby oop"
p "hello".ljust(20)      #=> "hello               "
p "hello".ljust(20, '1234')   #=> "hello123412341234123"
p "hello".rjust(20)      #=> "               hello"
p "hello".rjust(20, '1234')   #=> "123412341234123hello"
p "hello".center(20)      #=> "       hello        "
p "hello".center(20, '1234')   #=> "1234123hello12341234"
p "    hello    ".strip    #=> "hello"
p "    hello    ".lstrip   #=> "hello    "
p "    hello    ".rstrip   #=> "    hello"


