p Hash.[](:a=>1,'b'=>2, "c":3) #{:a=>1, "b"=>2, :c=>3}
p Hash[:b=>2] #{:b=>2}
p h=Hash.new # {}
p h = {:b=>2, c: :d} # {:b=>2, :c=>:d}
p h={:a => :A, :b => :B, :c => {:h1=>:v1,:h2=>:v2}} #{:a=>:A, :b=>:B, :c=>{:h1=>:v1, :h2=>:v2}}
p h={:a => :A, :b => :B, {:h1=>:v1,:h2=>:v2} => :c } #{:a=>:A, :b=>:B, {:h1=>:v1, :h2=>:v2}=>:c}
p h={a: :A, b: :B} #{:a=>:A, :b=>:B}

p hash_of_array_in_value = {:a1 => [1.3, 2, 3], :a2 => [4, 5, 6]} #{:a1=>[1.3, 2, 3], :a2=>[4, 5, 6]}
p hash_of_array_in_value[:a1][2] # 3
hash_of_array_in_value.each {|k, v| v.each {|subvalue| puts "Key: #{k} Value: #{subvalue}" }}  #Key: a1 Value: 1     Key: a1 Value: 2     Key: a1 Value: 3     Key: a2 Value: 4     Key: a2 Value: 5     Key: a2 Value: 6
hash_of_array_in_value.map {|k, v| v.map{|subvalue| puts "Key: #{k} Value: #{subvalue}"}}         #Key: a1 Value: 1     Key: a1 Value: 2     Key: a1 Value: 3     Key: a2 Value: 4     Key: a2 Value: 5     Key: a2 Value: 6
hash_of_array_in_value.collect {|k, v| v.collect{|subvalue| puts "Key: #{k} Value: #{subvalue}"}} #Key: a1 Value: 1     Key: a1 Value: 2     Key: a1 Value: 3     Key: a2 Value: 4     Key: a2 Value: 5     Key: a2 Value: 6

p hash_of_hash_in_value = {:h1 => {:h11=>:v11 ,:h12=>:v12 }, :h2 => {:h21=>:v21 ,:h22=>:v22 }} #{:a1=>[1.3, 2, 3], :a2=>[4, 5, 6]}
p hash_of_hash_in_value[:h1][:h11] # v11
hash_of_hash_in_value.each {|mainkey, mainvalue| mainvalue.each {|subkey, subvalue| puts "Key: #{mainkey} SubKey: #{subkey} Value: #{subvalue}" }}  #Key: h1 SubKey: h11 Value: v11 Key: h1 SubKey: h12 Value: v12 Key: h2 SubKey: h21 Value: v21 Key: h2 SubKey: h22 Value: v22
hash_of_hash_in_value.map {|mainkey, mainvalue| mainvalue.map {|subkey, subvalue| puts "Key: #{mainkey} SubKey: #{subkey} Value: #{subvalue}" }}  #Key: h1 SubKey: h11 Value: v11 Key: h1 SubKey: h12 Value: v12 Key: h2 SubKey: h21 Value: v21 Key: h2 SubKey: h22 Value: v22
hash_of_hash_in_value.collect {|mainkey, mainvalue| mainvalue.collect {|subkey, subvalue| puts "Key: #{mainkey} SubKey: #{subkey} Value: #{subvalue}" }}  #Key: h1 SubKey: h11 Value: v11 Key: h1 SubKey: h12 Value: v12 Key: h2 SubKey: h21 Value: v21 Key: h2 SubKey: h22 Value: v22

p hash_of_array_in_key={[1,2,3]=>:a,[4,5,6]=>:a2}   #{[1, 2, 3]=>:a, [4, 5, 6]=>:a2}
p hash_of_array_in_value[[1,2,3]]  #nil
hash_of_array_in_key.each {|k, v| k.each{|subkey| puts "SubKey: #{subkey} Value: #{v}"}}       #SubKey: 1 Value: a SubKey: 2 Value: a SubKey: 3 Value: a SubKey: 4 Value: a2 SubKey: 5 Value: a2 SubKey: 6 Value: a2
hash_of_array_in_key.map {|k, v| k.map{|subkey| puts "SubKey: #{subkey} Value: #{v}"}}         #SubKey: 1 Value: a SubKey: 2 Value: a SubKey: 3 Value: a SubKey: 4 Value: a2 SubKey: 5 Value: a2 SubKey: 6 Value: a2
hash_of_array_in_key.collect {|k, v| k.collect{|subkey| puts "SubKey: #{subkey} Value: #{v}"}} #SubKey: 1 Value: a SubKey: 2 Value: a SubKey: 3 Value: a SubKey: 4 Value: a2 SubKey: 5 Value: a2 SubKey: 6 Value: a2


