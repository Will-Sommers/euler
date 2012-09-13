T = Time.now
def max_r(a)
	total = 0
	max = 0
	# bound = 5*a
	br = 0
	i = 0
	while (i += 1)
		total = (((a+1)**i) + ((a-1)**i)) % (a**2)
		max = total if total > max
		# p total
		
		break if i == 2*a + 10
	end
	return max
end

# puts max_r(857)
ans = 0 
(3..1000).each do |p|

	# p max_r(p)
	# puts "#{p} -- #{max_r(p)}"
	ans += max_r(p)
	if p % 100 == 0
		puts p
	end

end

puts ans
puts Time.now - T