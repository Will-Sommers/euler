## It looks like the faster way to do this is to use the Set class.
## With combinations and then checking to see if it is included

start = Time.now
def pent_nums(n)
	i = 1
	s = (1..(n)).to_a
	s.each { |p| s[p-1] == (i*(3*i-1)/2) ? i += 1 : s[p-1] = nil }
	s.unshift(0)
	s[0] = nil
	return s
end

pent_arr = pent_nums(10000000)

pent_compact = pent_arr.compact

pent_compact.each {|j|
	done = false
	pent_compact.each {|k|
		if pent_arr[k-j] != nil && pent_arr[j+k] != nil	
			puts "answer numbers are #{k-j} with j: #{j}, k:#{k}" 
			done = true
		end
	}
	if done == true
			break
		end
}
print "#{Time.now - start}"