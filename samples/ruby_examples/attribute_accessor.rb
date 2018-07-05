class Acc
  # def name
  #   @name
  # end
  # def name=(name)
  #   @name = name
  # end
  # attr_reader :name
  # attr_writer :name
  attr_accessor :name
  def mod
    name = @name+ " Chiranth Chidarth"
    name
  end
end

obj=Acc.new
obj.send('name=',"Ramesh Uma")
puts obj.send(:name)
puts obj.send(:mod)