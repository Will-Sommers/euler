def is_pandigital?(num)
	num = num.to_s
	num.split(//).sort.join("") == "123456789"
end

# print "123456789".split(//).permutation.to_a.join("").to_i.select { |n| if is_pandigitial?(n)}

c = []
1.upto(10000).each do |i|
	arr =[]
	(1..9).each do |x|
		arr.push(x*i)
		if arr.join.length == 9 && is_pandigital?(arr.join.to_i)
			# puts "#{i} and #{x}"
			# puts arr.join.to_i
			c.push(arr.join.to_i)
		end
	end
	
end
puts c.sort