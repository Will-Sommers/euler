

arr = []

def sieve4dig(n)
  s = (0..n).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| s[m] = nil }
  end
  s.delete_if {|x| x.to_s.split("").length < 4}
  s.compact
end

arr = sieve4dig(9999)

i = 0
ans = []
arr.each do |x|
	b = []
	x.to_s.split("").permutation.to_a.each do |z|
		if arr.include?(z.join.to_i)
			b.push(z.join.to_i)
		end
	end
	ans.push(b.sort.reverse.uniq) if b.sort.uniq.length >= 3
end

ans = ans.sort.uniq

ans.each {|x| 
  x.each{ |y| 
    z = []
    (0..x.length-1).each { |i|
      z.push(y - x[i]) if y - x[i] != 0 && x.include?(1487) == false
      # print z
      # puts "#{y - x[i]}"
    }
    z.any? {|c| 
      if z.include?((2*c))
         p x.reverse
         p z.reverse
      end
    }
    # puts "------"
  }
}