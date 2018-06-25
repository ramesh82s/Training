jobcode = {
           :agrmnt => [1101,2101],
           :service => [1201,2201]
          }
acquire_job_cd=0
standardize_job_cd=1
puts jobcode[:agrmnt][acquire_job_cd]
puts jobcode[:agrmnt][standardize_job_cd]

a=2
 a==1? (puts 1) : (puts 2)

#-------Create Hash-----------------------------------------------------------
class Person
  p Hash.[](:a=>1)
  p Hash[:b=>2]
  h={:a => :A, :b => :B}
  h={a: :A, b: :B}
  h.each {|k,v| puts "Key is #{k} and Value is #{v}"}
  puts h.inspect
  puts h.invert
  #---
  Hash[a: :A, b: :B].each {|k,v| puts "Key is #{k} and Value is #{v}"}
  #---
  {a: :A, b: :B}.each {|k,v| puts "Key is #{k} and Value is #{v}"}
  #---
  a=[:a,1,:b,2,:c,3]
  puts Hash[:a,1,:b,2,:c,3]
  puts Hash[:a=>1,:b=>2,:c=>3]
  #---
  h=Hash.new(:default1)
  h.default = :default2
  h[:book] = :B
  h[:code] = :C
  puts h
  puts h[:default]
  #---
  h ={}
  h[:book] = :b
  h[:code] = :c
  h[:dot] = :d
  puts h
  puts h.length
  #---
  h={:A=>[:a,:b,:c], :D=>[:e,:f,:g]}
  h.each {|k,v| puts "Key is #{k} and Value is #{v}"}
  #---
  h={:A=>{:a=> :a1}, :D=>{:d=>:d1}}
  h.each {|k,v| puts "Key is #{k} and Value is #{v}"}
  #------------------------------------------------------------------
  h.flatten.each {|k| puts "#{k}"}
  #------------------------------------------------------------------
  a=[[1,2],[3,4],[5,6]]
  f=a.flatten
  puts f[-1]
  #-------Pass Has to method-----------------------------------
    def self.create(params)
      @name = params[:name]
      @age  = params[:age]
      return @name, @age
    end
  puts Person.create({name: "John Doe", age: 27})
  end
#------------

h={1=>2, 3=>4}
p h.collect {|i,j| puts "key is #{i} and value is #{j}"}


