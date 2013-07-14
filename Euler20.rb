r = 1
a = (1..100).to_a
a.each_with_index{|big, i|
	r *=big
}

r = r.to_s.split('')
r = r.collect{ |a|
	a.to_i
}
sum = 0
r.each { |a|
	sum+=a
}
puts sum