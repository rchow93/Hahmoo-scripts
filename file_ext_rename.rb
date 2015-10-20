#!/usr/bin/env ruby 

contents_dir = Dir.glob("*.bat")

contents_dir.each do |value|
  newname = value.sub(/.{1}$/,"")
  File.rename(value, newname)
end
