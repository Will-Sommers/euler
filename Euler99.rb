file = File.open("base_exp.txt", "rb").read.split(("\r\n"))

## BETTER CODE
print file.each_with_index.map {|pair, i|
	a, b = pair.split(",").map(&:to_i)
	[b * Math.log(a), i+1]
}.max


## MY CODE BELOW

# arr = arr.split("\r\n")
# arr = arr.collect { |x| 
# 	x = x.split(',')
# }


# max = 0
# ans = 0
# i = -1
# while i+= 1
# 	if Math.log(arr[i][0].to_i) * arr[i][1].to_i > max
# 		max = Math.log(arr[i][0].to_i) * arr[i][1].to_i
# 		ans = i + 1
# 	end
# 	break if i == arr.length-1
# end

# puts max
# puts ans 