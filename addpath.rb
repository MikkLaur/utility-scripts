#!/usr/bin/env ruby

BASHRC_PATH = ENV['HOME']+"/.bashrc_testfile"
abort("#{BASHRC_PATH} not found. Aborting...") unless File.file?(BASHRC_PATH)

require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: addpath.rb [-h] [-t | -d] [-c]"
  opts.on("-p", "--prepend", "Prepend new path") { |v| options[:prepend] = v }
  opts.on("-t", "--this", "Working directory will be added to $PATH") { options[:directory] = Dir.pwd }
  opts.on("-d", "--directory DIRECTORY_PATH", "Specify the directory") { |v| options[:directory] = v }
  opts.on("-c", "--comment COMMENT", "Also add a comment line to .bashrc") { |v| options[:comment] = v }

  opts.on("-h", "--help", "Prints this help!") { puts opts }
end.parse!
exit(0) if options == {}
abort("Invalid directory") unless File.directory?(options[:directory])

comment = "# " + options[:comment] if options[:comment]
new_path = options[:prepend] ? "export PATH=\"#{options[:directory]}:$PATH\"" : "export PATH=\"$PATH:#{options[:directory]}\""

File.open(BASHRC_PATH, "a") { |file| 
  file.puts ""
  file.puts comment if comment
  file.print new_path 
}
puts "#{new_path}"
exit(0)