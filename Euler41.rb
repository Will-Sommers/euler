## Someone else's code

require "mathn"
s, lst = Time.now, "1234567".split(//)
ans = lst.permutation.select{ |n| n.join("").to_i.prime?}.sort.last.join("")
puts "Found the answer #{ans} in #{Time.now() - s} seconds!"

