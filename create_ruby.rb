#!/usr/bin/env ruby 
#this script will create a new executable and time stamp the script creation date - it will set the rights perms to make executable

path = ARGV[0]

fail "specify filename to create" unless path

puts path
date = `date`
File.open(path, "w") { |f| f.puts "#!/usr/bin/env ruby \n #Hahmoo LLC - All rights reserved \n #Author: Richard Chow \n #creation date: #{date} " }
File.chmod(0755, path)
