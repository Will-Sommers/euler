r = 2 ** 1000
r = r.to_s.split('')
r = r.collect{ |a|
	a.to_i
}

sum = 0
r.each { |a|
	sum+=a
}
puts sum