x = 2
z = [1,2]

while x<40
	z[x] = z[x-1]+z[x-2]
	x = x + 1
end
print z
sum = 0
z.each{|a|
	if a < 4000000
		if a%2===0
			sum += a
		end
	end
}
print sum