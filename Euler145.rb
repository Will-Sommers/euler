s = Time.now

ans = 0
max = 10**5
arr = []
(1..max).each do |a|
	rev_a = a.to_s.reverse
	tot = rev_a.to_i + a

	if a %2 !=0 && tot % 2 != 0 
		z = 1
		if ((0..tot.to_s.length-2).all? { |x| z = z * 10; (tot/z).odd?}) 
			arr.push(a)
			ans += 1
		end
	end
end
print arr
puts "#{ans * 2} is the answer from 0 to #{max} in #{Time.now - s} s"

