a = 1..1000
sum = 0
a.each{ |i|
	x = i ** i
	sum +=x
}
sum = sum.to_s.split('')
a = sum[-10..-1].join
puts a

