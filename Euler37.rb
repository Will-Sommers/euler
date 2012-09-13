start = Time.now
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

def truncate(n)
	arr = []
	l_to_r = n.to_s.split("")
	r_to_l = n.to_s.split("")
	(1..l_to_r.length-1).each do |i|
		l_to_r.shift(1)
		r_to_l.pop(1)
		arr.push(l_to_r.join("").to_i, r_to_l.join("").to_i)
	end
	return arr
end

prime_arr = []
arr = []
prime_arr = sieve(900000)

prime_arr.each { |x| 
	arr.push(x) if x!=nil && truncate(x).all? {|n| prime_arr[n] != nil }
}

arr.shift(4)
# print arr
puts "Done in #{Time.now - start} seconds and the answer is #{arr.inject(:+)} with #{arr.length} total"

