s = Time.now
def sieve(n)
  s = (0..n).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| s[m] = nil }
  end
  s.compact
end

def sieve_nil(n)
  s = (0..n).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| s[m] = nil }
  end
  return s
end
upper = 1000000

arr = Array.new(sieve(upper))
arr_nil = Array.new(sieve_nil(upper))
puts "time #{Time.now - s}"

i = -1 
max = 0
ans = 0
ans_arr = []

(0..1000).each { |x|
	(0..10).each {|y| 
		if arr.slice(1, x).inject(:+) != nil
			if arr.slice(1, x).inject(:+) < upper
				a = arr.slice(1, x).to_a
				a.shift(y)
				if a.empty? == false && arr_nil[(a.inject(:+))] != nil
					# puts "#{a.inject(:+)} #{a}" 
					if a.length > max
						max = a.length 
						ans = a.inject(:+)
						ans_arr = a
					end
				end
			end
		end
	}
}
print ans_arr
puts "#{ans} found in time #{Time.now - s}"