require 'json'

puts my_hash = JSON.parse('{"hello": "goodbye"}')
puts my_json = JSON.generate(my_hash)