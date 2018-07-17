class Variables
  CON = 'Constant'
  puts CON
  CON = 'Changed Constant'
  puts CON
  puts __FILE__
  puts __LINE__
  def ins(var)
    @var1 = var
  end
  def results
    @var1
  end
end

first = Variables.new
puts first.ins("instance var - First Object")
second = Variables.new
puts second.ins("instance var - Second Object")
puts first.results
puts second.results
puts "First Line\nSecond Line\nThird Line"
puts 5**2
a=b=2
a=b ? (puts true) : (puts false)



