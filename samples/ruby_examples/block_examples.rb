def block_test
  yield
end

block_test do
  puts "yield in definition"
end