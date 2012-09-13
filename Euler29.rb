arr = []
(2..100).each do |a|
	(2..100).each do |b|
		arr.push((a**b)) #if arr.include?(a**b) == false
	end
end
puts arr.sort
puts arr.length
puts "________"
puts arr.uniq.length
# za = []

# x = (2..100).to_a.permutation(2).map {|a,b| za.push(a**b)}

# puts za.length