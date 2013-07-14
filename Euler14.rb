def sequence(n)
	i = 2
	while i+=1 
		if n.even?
			n = n/2
			if (n == 1)
				break
			end
		end
		if n.odd?
			n = ((n*3) +1)
		end
	end
	return i
end



i = 999999
max = 0

while (i-=1)
	
	if sequence(i) > max
		max = sequence(i)
		puts "----------New max length is #{max} with #{i}-------"
	end
	if i % 10000 == 0
		puts "#{i} and #{Time.now}"
	end
	break if i == 1
end

