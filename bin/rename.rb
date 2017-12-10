#!/usr/bin/env ruby

match_regex, replace_text, *filenames = ARGV

Dir.glob(filenames).each do |filename|
    dest_name = filename.gsub(match_regex, replace_text)
    if dest_name == filename
        puts "#{filename} was not renamed." 
    else
        puts "Renamed #{filename} to #{dest_name}" if File.rename(filename, dest_name)
    end
end
