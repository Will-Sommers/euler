def truncate(digits, places=10)
	digi_string = digits.to_s
	if digi_string.length > places
		return digi_string.slice(-places, places).to_i
	else
		return digi_string.to_i
	end
end


x = truncate(28433, 10)
puts x
i = 0
while (i+=50) do 

	x = truncate(x) * 2**50
	if i % 10000 == 0
		puts i
	end
	# while i == 7830450 || i <7830458
	#  	x = truncate(x) * 2
	# 	puts i
	#  	i += 1
	# end
	break if i == 7830450
end
puts truncate((x * 2**7 + 1), 10)