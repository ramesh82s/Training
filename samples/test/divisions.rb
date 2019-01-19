class Division
  def chk_division
    @array = (1..100)
    @array_3 = []
    @array_5 = []
    @array_3and5 = []
    @array.each do |i|
      if i % 3 == 0
        @array_3 << i
      elsif i % 5 == 0
        @array_5 << i
      else
        (i % 3 == 0) && (i % 5 == 0)
        @array_3and5 << i
      end
    end
    puts "divisible by 3 numbers are : #{@array_3}"
    puts "divisible by 5 numbers are : #{@array_5}"
    puts "Not divisible by both 3 and 5 numbers are : #{@array_3and5}"
  end
end
obj=Division.new
obj.chk_division
