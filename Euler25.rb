# s = Time.now
# current_term = 1
# last_term = 0
# x = 0
# y = 1
# while x <= 1000
# 	last_term, current_term = current_term, last_term + current_term
# 	x = current_term.to_s.length
# 	y +=1
# 	if x == 1000
# 		z = Time.now
# 		puts "*****#{x}  #{current_term} -------- #{y} ------ #{z -s}"
# 		break
# 	end
# end

## My code is above, here is a great refactored version
arr, ans = [0, 1, 1], 2
until arr[2].to_s.length >= 1000
	arr.shift && arr.push(arr[0]+arr[1]) && ans +=1
	if ans == 541
		puts "#{arr[2]}"
		break
	end
end
puts "got it #{ans}"
