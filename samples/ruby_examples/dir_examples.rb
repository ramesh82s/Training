p Dir.pwd #"C:/Users/rseralathan/IdeaProjects/Training/samples/ruby_examples"
p Dir.getwd #"C:/Users/rseralathan/IdeaProjects/Training/samples/ruby_examples"
p Dir.open('C:\Users\rseralathan\IdeaProjects\Training\samples\ruby_examples')
Dir.foreach(Dir.pwd) {|file_name| p file_name} # array_examples.rb attribute_accessor.rb begin_end.rb etc..
d=Dir.new(Dir.pwd); d.each {|file_name| p file_name} # array_examples.rb attribute_accessor.rb begin_end.rb etc..
p Dir.entries(Dir.pwd) # [".", "..", "array_examples.rb", "attribute_accessor.rb", "begin_end.rb", "block_examples.rb", "dir_examples.rb", "exception.rb", "file_examples.rb", "hash_examples.rb", "if_unless_case.rb", "inbuild_functions_examples.rb", "jason.rb", "module_test.rb", "numeric_examples.rb", "operator_overloading.rb", "public_private_protected_methods.rb", "regular_expressions_examples.rb", "ruby_quick_reference", "string_examples.rb", "test2.rb", "test3.rb", "testfile.txt", "variables.rb", "while_until_for_break_next_redo_retry.rb", "work.rb"]
d = Dir.new('../ruby_examples'); p d.path   #=> "../ruby_examples" # Returns the path parameter passed to <em>dir</em>'s constructor.
d = Dir.new('../ruby_examples'); p d.to_path   #=> "../ruby_examples" # Returns the path parameter passed to <em>dir</em>'s constructor.
p Dir.inspect # "Dir" # Return a string describing this Dir object.
p d=Dir.new(Dir.pwd); p d.read; p d.read; p d.read # "." ".." "array_examples.rb" etc..
d = Dir.new(Dir.pwd); p d.read; p d.rewind; p d.read     #=> "." #<Dir:C:/Users/rseralathan/IdeaProjects/Training/samples/ruby_examples> "." # Repositions <em>dir</em> to the first entry.
d = Dir.new(Dir.pwd); p d.read; p d.tell; p d.read; p d.tell; p d.read; p d.tell;     #"." 1 ".." 2 "array_examples.rb" 3 # Returns the current position in <em>dir</em>.
d = Dir.new(Dir.pwd); p d.read; i=d.tell; p d.seek(i)     #"." #<Dir:C:/Users/rseralathan/IdeaProjects/Training/samples/ruby_examples> #eeks to a particular location in <em>dir</em>. <i>integer</i>
d = Dir.new(Dir.pwd); d.read; d.read; d.read; p d.pos     #3 # Returns the current position in <em>dir</em>. See also
d = Dir.new(Dir.pwd); p d.read; d.close #"." # # Closes the directory stream. Any further attempts to access
p Dir.pwd; Dir.chdir('C:\Users\rseralathan\IdeaProjects\Training\samples'); p Dir.pwd #"C:/Users/rseralathan/IdeaProjects/Training/samples/ruby_examples" "C:/Users/rseralathan/IdeaProjects/Training/samples" # Changes the current working directory
Dir.chdir('C:\Users\rseralathan\IdeaProjects\Training\samples')
puts Dir.pwd
Dir.chdir('C:\Users\rseralathan\IdeaProjects\Training') do
  puts Dir.pwd
  Dir.chdir('C:\Users\rseralathan\IdeaProjects') do
    puts Dir.pwd
  end
  puts Dir.pwd
end
puts Dir.pwd
Dir.mkdir(File.join(Dir.pwd, 'sample2')) # Makes a new directory named by <i>string</i>, with permissions



