require 'bundler'
require 'rubygems'
require 'rake'

## Bundler #################

Bundler::GemHelper.install_tasks

## RSpec ###################

require 'spec/rake/spectask'

desc "Run all specs"
task :spec => ['spec:unit'] # and others like integration, etc.

desc "Run unit specs"
Spec::Rake::SpecTask.new('spec:unit') do |t|
  t.spec_opts = ['--colour --format progress --loadby mtime --reverse']
  t.spec_files = FileList['spec/*_spec.rb']
end

# Repeat for integration tests or other spec tasks...ç

task :default => :spec

############################

