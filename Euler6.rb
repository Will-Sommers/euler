

sum_big = 0


(1..100).each {|s|
	sum_big += s
}
sum_big = sum_big ** 2

sum_sm = 0 
(1..100).each {|n|
	sum_sm += n **2
}

puts "The answer is #{sum_big} - #{sum_sm} = #{sum_big - sum_sm} "