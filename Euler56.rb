product = 0
ans = 0

1.upto(99).each do |a|
	1.upto(99).each do |b|
		sum = (a**b).to_s.split("").map(&:to_i).inject(:+)
		ans = sum if sum > ans
	end
end

puts ans