class Duplicates
  def chk_duplicates
    @array = [1, 6, 1, 2, 3, 6, 7,5,9]
    @source = @array.sort
    @len = @source.length
    @target = []
    @target[0] = @source[0]                          #assigning first value by default
    @j = 0
    @k = 1
    @source.each do |i|
      j = @j
      k = @k
      if @source[j] == @source[k]                   #if previous and current numbers are equal just increment position
        @j = @j + 1
        @k = @k + 1
      else
        @target[j] = @source[k]         #if previous and current numbers are notequal assing values and increment position
        @j = @j + 1
        @k = @k + 1
      end
    end
    @target=@target.compact                             #to remove NIL values
    puts "source array is #{@source}"
    puts "length of array is #{@len}"
    puts "output array without duplicates are #{@target} "
  end
end
obj = Duplicates.new
obj.chk_duplicates