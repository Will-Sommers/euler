total = 0


(1..1000000).each do |i|
	x = i.to_s.split("")
	split = x.collect do |n| 
		n = n.to_i**5
	end
	if split.inject(:+).to_i == i && i != 1
		total += i
		puts "#{total} total and #{i} num at #{Time.now}"
	end
end
puts Time.now
puts total