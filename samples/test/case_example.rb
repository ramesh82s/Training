class Iteration
  def chk_iteration
    @source = 'hellooooo'
    @letter_to_chk = 'o'
    @len = @source.length
    @i = @len - 1
    @count = 0
    while @i >= 0 do
      if @letter_to_chk == @source[@i]
        @count = @count + 1
      end
      @i = @i - 1
    end
    puts "number of '#{@letter_to_chk}' in given '#{@source}' are #{@count}"
  end
end

obj = Iteration.new
obj.chk_iteration

String.try_convert('ruby')
