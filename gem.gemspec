# -*- encoding: utf-8 -*-
require File.expand_path("../lib/gem/version", __FILE__)

Gem::Specification.new do |s|
  s.name                = %q{gem}
  s.version             = Gem.version
  s.platform            = Gem::Platform::RUBY
  s.authors             = ["Estanislau Trepat"]
  s.email               = %q{etrepat@gmail.com}
  s.homepage            = "http://github.com/etrepat/gem_skeleton"
  s.summary             = "Gem skeleon"
  s.description         = %[
Basic gem template to build up a new gem from scratch. Uses bundler and expects
tests to be written with rspec.
  ]
  s.date                = %q{2010-12-17}

  # Required rubygems version
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = s.name

  # development dependencies go here
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec", "~> 2.0.1"

  # run-time dependencies go here
  #s.add_dependency "eventmachine", "~> 0.12.10"

  s.files               = `git ls-files`.split("\n")

  # if it has executables (CLI) uncomment the following lines and be sure to create
  # a bin/ directory with the appropiate script.
  #s.executables         = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  #s.default_executable  = %q{default_executable_name}
  s.require_path        = 'lib'

  s.post_install_message = %[
===========================================================================
Congratulations!

Your new gem has been installed.

Cheers!
===========================================================================
  ]
end

