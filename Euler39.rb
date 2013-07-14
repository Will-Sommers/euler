s = Time.now

ans = Hash.new(0)
max = 0
(1..1000).each { |a|
	(1..(1000-a)).each {|b|
	c = Math.sqrt(a**2 + b**2)
	ans[a+b+c] += 1 if c % 1 == 0 && a + b + c < 1000
	}
}
# arr.uniq!

puts ans.max_by{|a,b| b}[0].round
