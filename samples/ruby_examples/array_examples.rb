a=[1,1.3,:c,[:x,:y,:z],{:A=>:b}]
 p a
p Array.[](1,2,3,4,5)
a.each {|k| puts "Value is #{k}"}
a.collect {|k| puts "Value is #{k}"}
p a=Array.new(3, false)
p a=Array.new(3) {Array.new(4)}
p a=Array.new(10) {Hash.new}
p Array[1,2,3,4]
p Array({1=>2, 3=>4})
p arr = [0, 1, 2, 3, 4, 5]
p arr[2]    #=> 3
p arr[100]  #=> nil
p arr[-3]   #=> 4
p arr[2, 3] #=> [3, 4, 5]
p arr[1..4] #=> [2, 3, 4, 5]
p arr[1..-3] #=> [2, 3, 4]
p arr[-2,2]
p arr.at(1)
p arr.fetch(100, false)
p arr.first
p arr.last
p arr.take(3)
p arr.drop(3)
p arr.length
p arr.size
p arr.count
p arr.empty?
browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', :IE]
p browsers.include?(:IE)
p browsers.push(:Android) << :iOS  << :Windows
p browsers.unshift(:Dolphin)
p browsers.insert(2,:Chrome2, :Chrome3)
p browsers.pop
p browsers
p browsers.shift
p browsers
p browsers.delete(5)
p browsers << nil
p browsers.compact!
p browsers << :IE
p browsers.uniq
browsers.each {|v| puts "#{v} is Browser"}
p a=%w{first second third }
p a.reverse
p a.reverse_each {|v| p v}
a=%w{1 2 3 4}
p a.map! {|v| v.to_i*2 }
p a.select {|v| v > 4}
p a.select {|v| v < 8}
p a.reject {|v| v > 4}
p a.drop_while {|v| v < 4}
p a
p a.delete_if {|v| v > 4}
p a.keep_if {|v| v < 4}
p a
p arr=%w{1 2 3 4 5 6 7}.inspect
p arr=%w{1 2 3 4 5 6 7}.to_s
p arr=[[1,2],[3,4],[5,6]].to_h
p arr=[1,2]
p arr.hash
p arr.find_index(2)
p [1,2,3].join(:-.to_s)
p [1,2,3].rotate
p [3,1,2].sort
p [3,1,2].sort {|x,y| y <=> x}
p [[1,2], [3,4], [5,6,]].transpose
p [ :a, :b, :c, :d, :e ].replace ([:x,:y,:z])
p [1,2,3] <=> [1,2,3]
p [1,2,3] <=> [1,2,2]
p [1,2,2] <=> [1,2,3]
p [1,2,3] <=> [1,2,:a]
p [[1,2],[3,4],[5,6],[7,8]].flatten
p [[1,2],[3,4],[5,6],[7,8]].shuffle
p [[1,2],[3,4],[5,6],[7,8]].sample
p [[1,2],[3,4],[5,6],[7,8]].sample(2)
p [1,2].permutation.to_a
p [1,2,3].permutation(2).to_a
p [1,2].combination(1).to_a
p [1,2,3].combination(2).to_a


