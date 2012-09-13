

(1..999).each do |a|
	(1..999).each do |b|
		c = 0
		a = a.to_i
		b = b.to_i
		c = Math.sqrt((a ** 2) + (b ** 2))
		prod = 0
		if(a + b + c == 1000)
			puts a
			puts b
			puts c
			prod = a * b * c
			puts prod
			break
		end
	end
end

		
