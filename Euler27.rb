
s = Time.now
def sieve(n)
  s = (0..n).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| s[m] = nil }
  end
  return s
end

upper = 999
arr = []

arr = sieve(upper)
arr_compact = sieve(upper).compact!
test_array = (0..999).to_a
arr_compare = sieve(1000000)


max = 0
max_arr = []
arr_compact.each do |p|
	arr_compact.each do |x|
		test_array.each do |f|
			total = f**2 - x*f + p
			if arr_compare[total] == nil
				(max = f; max_arr = [-x,p]) if f > max 
				break
			end
	 	end
	end
end

puts "ans = #{max_arr[0]} * #{max_arr[1]} = #{max_arr.inject(:*)}"
puts "time #{Time.now - s}"