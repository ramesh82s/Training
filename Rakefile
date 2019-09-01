puts "Executing: #{__FILE__}"
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

namespace :features do
  Cucumber::Rake::Task.new(:regression, "Run features with run task") do |task|
    run_folder = (ENV["run_folder"] ? ENV["run_folder"] : "")
    task.cucumber_opts = "#{run_folder} --tags @regression"
  end
end

namespace :adhoc do
  task :adhoc_task1 do
    #todo - Adhoc taks will be implemented
  end
end
