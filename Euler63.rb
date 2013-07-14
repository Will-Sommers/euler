def is_it?(x, y)
	y == (x**y).to_s.split("").length ? true : false
end

ans = 0
(1..300).each do |x|
	(1..30).each do |y|
		if is_it?(x, y)
			puts "#{x}, #{y}"
			ans +=1
		end
	end
end
puts ans

## refactor so its not so brute forcey