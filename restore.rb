# 
# After a fresh clone. For jsmestad.
#

File.open('local.el', 'w') do |f|
  f.puts '(load "jsmestad")'
end

puts "Don't forget to M-x byte-compile-file espresso"
puts "Also download =< cedet-1.0pre6 in order to get ECB to work."