a=[1,1.3,:c,[:x,:y,:z],{:A=>:b}]
p a                     # [1, 1.3, :c, [:x, :y, :z], {:A=>:b}]
p Array.[](1,2,3,4,5) # [1, 2, 3, 4, 5]
a.each {|k| puts "Value is #{k}"}
a.collect {|k| puts "Value is #{k}"}
a.map{|k| puts "Value of map is #{k}"}
p a=Array.new(3, false) # [false, false, false]
p a=Array.new(3) {Array.new(4)} # [[nil, nil, nil, nil], [nil, nil, nil, nil], [nil, nil, nil, nil]]
p a=Array.new(10) {Hash.new} # [{}, {}, {}, {}, {}, {}, {}, {}, {}, {}]
p Array[1,2,3,4] # [1, 2, 3, 4]
p Array({1=>2, 3=>4})# [[1, 2], [3, 4]]
p arr = [0, 1, 2, 3, 4, 5] # [0, 1, 2, 3, 4, 5]
p arr[2]    #=> 2                              # 2
p arr[100]  #=> nil
p arr[-3]   #=> 3
p arr[2, 3] #=> [3, 4, 5]
p arr[1..4] #=> [2, 3, 4, 5]
p arr[1..-3] #=> [2, 3, 4]
p arr[-2,2]   # []4, 5]
p arr.at(1) #1                                         #alternae metod to return value for a given index
p arr.fetch(1, 'chira') # 1
p arr.fetch(100, 'chira') # Chira                            #alternae metod to return value for a given index and provide default value if index not found
p arr.first   # 0                                            #to return first element
p arr.last    # 5                                            #to return last element
p arr.take(3) # [0, 1, 2]                                 #to get first n elements
p arr.drop(3) # [3, 4, 5]                                 #to drop first n elements
p arr.length # 6                                             #to find numbers of elements method 1
p arr.size   # 6                                             #to find numbers of elements method 2
p arr.count  # 6                                             #to find numbers of elements method 3
p arr.empty? # false                                         #to check if any elemnt present
p arr.clear # []                                             #to remove all the elements
browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', :IE]
p browsers.include?(:IE) # true                              #to check if element is present
p browsers.push(:Android) << :iOS  << :Windows #["Chrome", "Firefox", "Safari", "Opera", :IE, :Android, :iOS, :Windows]    #to add element at the end
p browsers.unshift(:Dolphin) #[:Dolphin, "Chrome", "Firefox", "Safari", "Opera", :IE, :Android, :iOS, :Windows]                #to add element to index 0
p browsers.insert(2,:Chrome2, :Chrome3) #[:Dolphin, "Chrome", :Chrome2, :Chrome3, "Firefox", "Safari", "Opera", :IE, :Android, :iOS, :Windows]   #to insert multiple element in a given index
p browsers.shift #:Dolphin                                                                                                      #to removed index 0 element
p browsers #["Chrome", :Chrome2, :Chrome3, "Firefox", "Safari", "Opera", :IE, :Android, :iOS, :Windows]
p browsers.delete("chira") #nil                                                                                                 #to remove element by name
p browsers << nil #["Chrome", :Chrome2, :Chrome3, "Firefox", "Safari", "Opera", :IE, :Android, :iOS, nil]
p browsers.compact! #["Chrome", :Chrome2, :Chrome3, "Firefox", "Safari", "Opera", :IE, :Android, :iOS]                          # to remove nil element
p browsers << :IE #["Chrome", :Chrome2, :Chrome3, "Firefox", "Safari", "Opera", :IE, :Android, :iOS, :IE]
p browsers.uniq #["Chrome", :Chrome2, :Chrome3, "Firefox", "Safari", "Opera", :IE, :Android, :iOS]                              #to remove duplicate element
p a=%w{first second third } #["first", "second", "third"]                                                                       # to convert names strings into array
p a.reverse #["third", "second", "first"]                                                                                       # to change order of the elements to opposite
p a.reverse_each {|v| p v} # "third" "second" "first"                                                                           # to change order and get them into iteration
a=%w{1 2 3 4}
p a.map! {|v| v.to_i*2 } #[2, 4, 6, 8]                         #Do arithmetic to the elements
p a.select {|v| v > 4} #[6, 8]                                 #choose the elemnts >,<
p a.select {|v| v < 8} #[2, 4, 6]
p a.keep_if {|v| v < 4} #[2]                                   # choose the elemnts >,<, method2
p a.reject {|v| v > 4} #[2, 4]                                 # Drop the element >,<
p a.drop_while {|v| v < 4} #[4, 6, 8]                          # Drop the element >,<, method 2
p a #[2, 4]
p a.delete_if {|v| v > 4} #[2, 4]                              # Drop the element >,<, method 3

p a #[2}
p arr=%w{1 2 3 4 5 6 7}.inspect #"[\"1\", \"2\", \"3\", \"4\", \"5\", \"6\", \"7\"]"
p arr=%w{1 2 3 4 5 6 7}.to_s #"[\"1\", \"2\", \"3\", \"4\", \"5\", \"6\", \"7\"]"
p arr=[[1,2],[3,4],[5,6]].to_h #{1=>2, 3=>4, 5=>6}              #to convert array to hash
p arr=[1,2] #[1, 2]
p arr.hash #544264933
p arr.find_index(2) #1                                          # to return index by value
p [1,2,3].join(:-.to_s) #"1-2-3"                                # to conveert array to string and add required vakue in between
p [1,2,3].rotate #[2, 3, 1]                                     # to move element left hand side by 1
p [1,2,3,4,5].rotate(-2) #[4,5,1,2,3]                     # to move element right hand side by 2
p [3,1,2].sort #[1, 2, 3]                                       # to order in ascending
p [3,1,2].sort.reverse #[3, 2, 1]                               # to order in descending
p [3,1,2].sort {|x,y| y <=> x} #[3, 2, 1]                       # to order in  descending, method 2
p [[1,2], [3,4], [5,6,]].transpose #[[1, 3, 5], [2, 4, 6]]      # to convert column to row
p [ :a, :b, :c, :d, :e ].replace ([:x,:y,:z]) #[:x, :y, :z]     # convert one set of array to another set
p [1,2,3] <=> [1,2,3] #0
p [1,2,3] <=> [1,2,2] #1
p [1,2,2] <=> [1,2,3] #-1
p [1,2,3] <=> [1,2,:a] #nil
p [[1,2],[3,4],[5,6],[7,8],{:a=>1, :b=> 2}].flatten #[1, 2, 3, 4, 5, 6, 7, 8, {:a=>1, :b=>2}]  #to convert array of array,hash tinto just array
p [[1,2],[3,4],[5,6],[7,8]].shuffle #[[5, 6], [1, 2], [7, 8], [3, 4]]                #to place elemets into random order
p [[1,2],[3,4],[5,6],[7,8]].sample #[3, 4]                                           # to get random elemnt
p [[1,2],[3,4],[5,6],[7,8]].sample(2) #[[5, 6], [7, 8]]                              # to get 2 randome elements
p [1,2,3].permutation.to_a #[[1, 2], [2, 1]]
p [1,2,3].permutation.to_a #[[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
p [1,2,3].permutation(2).to_a #[[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]
p [1,2].combination(1).to_a #[[1], [2]]
p [1,2,3].combination(2).to_a #[[1, 2], [1, 3], [2, 3]]


