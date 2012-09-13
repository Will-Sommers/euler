require "mathn"
sum = 0

1.upto(2000000).each do |x|
	if x.prime?
		sum += x
	end
end
p "finished at #{Time.now}."
p "sum is #{sum}"