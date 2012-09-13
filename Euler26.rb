s = Time.now
def repeat(x)
	i = 0
	while i +=1
		if x[0,i].join == x[i,i].join
			return i
			break
		end
		break if i ==1000
	end
	
end
max = 0
ans = 0
(1..999).step(2).each {|x|
	a = (1*10**2050/x*10**2051).to_s.split("")
	z = repeat(a)
	max = z if z != nil && z > max
	ans = x if  z != nil && z == max
}



puts "answer = #{ans} length = #{max} in #{Time.now-s}"