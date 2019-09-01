class Fibonacci
  def find_fibonacci(range)
    @fibonacci_array = []
    @previous_number = 0
    @current_number = 1
    @fib = 0
    until @fib > range do
      @fib = @previous_number + @current_number
      @fibonacci_array << @fib if @fib < 100
      @previous_number = @current_number
      @current_number = @fib
    end
   puts @fibonacci_array
  end

end
object = Fibonacci.new
object.find_fibonacci(100)