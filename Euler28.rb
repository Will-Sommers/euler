# POSITIONS
z_arr = [0]
z = 0
while z += 2
	z_arr.push(((z-1)*z)+1)
	z_arr.push((z*z)+1)
	z_arr.push(((z+1)*z)+1)
	z_arr.push(((z+2)*z)+1)
	break if z == 1000
end
print z_arr.inject(:+) + 1
puts 

# SETUP
# side = 5
# last_num = side**2
# puts last_num

# #LOOP
# i = 0
# sum = 0
# while i do
# 	arr = (1..last_num).to_a
# 	puts "#{z_arr[i] +1}"
# 	sum += z_arr[i] +1
# 	i+=1
# 	break if i == (13)
# end
# puts sum
# i = -1
# while i+=1
# 	print