#!/usr/bin/env ruby 
path = ARGV[0]

fail "specify filename to create" unless path

puts path
File.open(path, "w") { |f| f.puts "#!/usr/bin/env ruby \n #Hahmoo LLC - All rights reserved \n #Author: Richard Chow " }
File.chmod(0755, path)
