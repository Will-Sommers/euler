# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.
# i = 0
# while (i += 1)

# 	x = 1
	
# 	while (x <(i/2))
# 		if (i % x == 0)
# 			puts "#{x} and #{i}"
# 			x+=1
# 		end
# 	end
# 	if (i == 100)
# 		puts "breaking..."
# 	end
# end

def factors_total(n)
	i = 1
	sum = 0
	while ((n/2) >= i)
		if (n % i == 0)
			puts i
			sum += i
		end
		i += 1
	end
	return sum
end

factors_tot_arr = []

(1..9999).each do |i|
	factors_tot_arr[i] = factors_total(i)
end

is_a_pair = lambda {|x, y| (x != y) &&  ((factors_tot_arr[x] == y) && (factors_tot_arr[y] == x))}


sum = 0
puts "Found sum to be #{sum}"

 (1..9999).each { |n|
 	(1..n).each { |x|
 		 if is_a_pair.call(n, x)
     		 puts "Found amicable pair... #{n} and #{x} at #{Time.now}"
     		 sum += x + n
   		 end
  	}
}


puts "Found sum to be #{sum}"



