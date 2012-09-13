s = Time.now

class Array
	def test_eight
		self.sort_by!{|x,y| x}
		(0..self.length-5).each { |x| return self[x,8].sort if (1..7).all? { |y| self[x][0] == self[x+y][0] }}
	end

	def slice_arr
		(3..3).each { |u|       ## number of digits deleted
			(0..(self[0][0].to_s.split("").length-1)).to_a.combination(u).to_a.each { |y|
				arr = []
				if u == 2           ## 2 digits deleted 
					self.each { |x|
						z_split = x[0].to_s.split("")
						z = x[0].to_s.split("")
						a, b = y[0], y[1]
						z.delete_at(a)
						z.delete_at((b-1))
						arr.push([z.join, x[1]]) if z_split[a] == z_split[b] 
					}
				end
				if u == 3						## 3 digits deleted
					self.each { |x|
						z_split = x[0].to_s.split("")
						z = x[0].to_s.split("")
						a, b, c = y[0], y[1], y[2]
						z.delete_at(a)
						z.delete_at((b-1))
						z.delete_at((c-2))
						arr.push([z.join, x[1]]) if z_split[a] == z_split[b] && z_split[a] == z_split[c]
					}
				end
				if arr.test_eight.kind_of?(Array)
					return arr.test_eight 
					break
				end
			}
		}
	end
end

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



arr = sieve(1_000_000)
arr_nil = []
arr.each_with_index { |x,i| arr_nil.push([x,i])} 	## attaching index
arr_nil.shift(99999) 															## removing primes below 100_000

arr_num = arr_nil.select {|x| x[0] != nil }				## removing nil(non-prime)

puts "time #{Time.now - s}"

print arr_num.slice_arr																

puts "time #{Time.now - s}"