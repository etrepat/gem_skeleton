require 'bundler'
require 'rubygems'
require 'rake'

## Bundler #################

Bundler::GemHelper.install_tasks

## RSpec ###################

require 'rspec/core/rake_task'

desc "Run all specs"
task :spec => ['spec:unit'] # and others like integration, etc.

desc "Run unit specs"
RSpec::Core::RakeTask.new('spec:unit') do |t|
  t.pattern = "spec//*_spec.rb"
  t.rspec_opts = ['--colour --format progress --loadby mtime --reverse']
end

# Repeat for integration tests or other spec tasks...

task :default => :spec

############################

