## Need to fix this.

a = []
(10..99).each do |denom|
	(10..denom-1).each do |num|
		d = denom.to_s.split('')
		n = num.to_s.split('')
		div = num*1.0 / denom
		if d.any? { |x| n.include?(x)}
			if div == n.select { |x| d.include? }
				puts "#{num} / #{denom} == #{div} #{n.sort.shift.to_i } / #{d.sort.shift.to_i}"
			end
		end
	end
end
