require 'mathn'
c = (1..20).to_a
x = Array.new 
a =  14 * 18 * 20 * 17 * 19 * 13 * 11

puts a
c.each_with_index{|big, i|
	c.each_with_index{|m1, i|
		c.each_with_index{|m2, i|
			if (big%m1 === 0 and m1%m2===0)
				x.push(big)
			end
		}
	}
}
x.uniq!
print x
