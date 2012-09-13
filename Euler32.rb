def is_pandigital?(num) 
  	
  first = num[0,9].split('')
  first.delete("0")
  return first.uniq.count == 9
end


str = "123456789"
puts str.split("").length == 9
a = []

(1..2500).each do |x|
	(1..100).each do |y|
		sum = x * y
		str = x.to_s + y.to_s + sum.to_s
		#puts "#{sum} and #{x} and #{y}"
		if is_pandigital?(str) && str.split("").length == 9
			a.push(sum)
			a = a.uniq.sort
			print a
			
			puts "#{str} and #{x} and #{y} and #{sum}"
		end
	end
end

puts a.inject(:+)




### better code

#!/usr/bin/env ruby
sum = 0
pan = "123456789".split(//)
(1000...10000).each {|i| arr = i.to_s.split(//)
  next if arr.uniq!
  arr = pan - arr
  l = arr.length
  n = Math.sqrt(i)
  (2..n).each {|j| next if i%j != 0
    s = j.to_s + (i/j).to_s
    break if s.length > l
    sum += i and break if s.length == l and s.split(//).sort == arr
  }
}
puts sum