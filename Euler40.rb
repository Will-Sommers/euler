arr = [1,2,3,4,5,6,7,8,9]


1.upto(10000) do |i|
	0.upto(9) do |x|
		arr.push(i)
		arr.push(x)
	end
end


arr =  arr.join("")
puts arr
x = 1
ans = 1
while x
	# puts arr.slice((x-1),1)
	ans = ans * arr.slice((x-1),1).to_i
	puts "#{x}current answer #{ans} and #{arr.slice((x-1),1)}"
	x = x * 10
	break if x > 1000001
end

puts "123456789101112131415161718192021".length
puts arr.slice(0,1)
puts arr.slice(9,1)
puts arr.slice(99,1)
puts arr.slice(999,1)
puts arr.slice(9999,1)
puts arr.slice(99999,1)
puts arr.slice(999999,1)