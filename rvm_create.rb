#!/usr/bin/env ruby

# Creates an rvm gemset w/ rails using supplied arguments
# TODO?: Does not check for RVM installation,
#       Should check to see if user wants documentation,
#       Rails version not specified
#       Script should check Ruby version specified is installed
# Usage: $rvm_create 1.9.3 newproject 

raise "Not enough arguments." unless ARGV.length == 2
ruby_version = ARGV.first
gemset_name = ARGV.last

system("rvm #{ruby_version} do rvm #{ruby_version}@#{gemset_name} --create")
puts "Installing current version of Rails"
system("rvm #{ruby_version}@#{gemset_name} do gem install rails --no-rdoc --no-ri")
puts "Rails installed with #{ruby_version} at gemset #{gemset_name}"
