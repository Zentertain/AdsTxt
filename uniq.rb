#!/usr/bin/env ruby

lines = {}
File.readlines('app-ads.txt').each do |l|
	unless lines[l]
		lines[l] = true
	end
end

contents = ""
lines.keys.each do |l|
	contents += l
end

File.write('app-ads.txt', contents)
