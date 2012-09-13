# a = "23".split('').to_a
# print a.combination(10).to_a.count

def the_maths(z)
	a = (1..z).to_a
	return a.inject(:*)
end

# print "#{the_maths(23)/(the_maths(10)*the_maths(13))}"
s = Time.now
sum = 0
(1..100).each { |n|
	limit = n-1
	(1..limit).each { |x|
		diff = the_maths(n-x)
		total = (the_maths(n))/(diff*the_maths(x))
		if total > 1000000
			sum +=1
			puts "#{total} and #{sum} in #{Time.now - s} sec"
		end
	}
}