# define a class
class Box
  # constructor method
  def initialize(w,h)
    @width, @height = w, h
  end

  # instance method by default it is public
  def getArea
    getWidth() * getHeight
  end

  # define private accessor methods
  def getWidth
    @width
  end
  def getHeight
    @height
  end
  # make them private
  private :getWidth, :getHeight

  # instance method to print area
  def printArea
    @area = getWidth() * getHeight
    puts "Big box area is : #@area"
  end
  # make it protected
  protected :printArea

  def aceess_protected
    printArea
  end

  def aceess_private
    getWidth
  end
end

class Bar < Box
  def protected_mt
  printArea
  end
  def private_mt
  getWidth
  end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"
# puts box.getHeight


# try to call protected or methods
#  box.printArea()
 box.aceess_protected

bar=Bar.new(1, 2)
bar.aceess_protected
bar.aceess_private