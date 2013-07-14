

#print "197".split("").to_a.rotate(0).join.to_i.prime?
start = Time.now
prime_arr = []

(1..1000000).each do |i|
	prime_arr[i] if i.prime?
end

print prime_arr[]
arr = []
prime_arr.each { |x|
	x_str = x.to_s.split("")
	if x.prime? 
		if (0..(x_str.length)).map {|i|  x_str.to_a.rotate(i).join("").to_i.prime? }.all?
			puts x
			arr.push(x)
		end
	end
}

puts "#{arr.length} in #{Time.now - start}"