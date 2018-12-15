class Pal
  def chk_palindrome
    @string = "1234567899876543211"
    @len = @string.length           #gives total number of letters in a string, its size of string
    @rev_string = ""

    i = @len - 1                    #position starts from zero location to lenght/size-1
    while i >= 0 do
      @rev_string << @string[i]
      i = i - 1
    end
    puts "lenght of string is #{@len}"
    puts @string
    puts @rev_string
    if @rev_string == @string
      puts "given string is palindrome"
    else
      puts "given string is not palindrome"
    end
  end
end
object=Pal.new
object.chk_palindrome