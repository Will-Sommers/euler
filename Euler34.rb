# a = (1..9).to_a
# print a.inject(:*)*9


def the_math(n)
	sum = 0
	n.to_s.chars.to_a.each do |x|
		if x != "0" then sum += (1..x.to_i).inject(:*) else sum += 1 end
	end
	return sum
end

sum = 0
(3..500000).each do |n|
	if n % 10000 ==0
		puts "#{n} at #{Time.now}" 
	end
	sum += n if the_math1(n) == n
end
puts sum

