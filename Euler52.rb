# class Integer
# 	def test?
# 		return true if (self*(2)).to_s.split("").sort.join == self.to_s.split("").sort.join && (self*(3)).to_s.split("").sort.join == self.to_s.split("").sort.join && (self*(4)).to_s.split("").sort.join == self.to_s.split("").sort.join && (self*(5)).to_s.split("").sort.join == self.to_s.split("").sort.join && (self*(5)).to_s.split("").sort.join == self.to_s.split("").sort.join
# 		return false
# 	end
# end

# My code above trying to set a class Method -- couldn't find out how to iterate through
# the range of 2-6 so looked at the forum.

i = 0
while i+=1
	test = true
	(2..6).each do |x| 
		test = false unless (i*x).to_s.split("").sort == i.to_s.split("").sort
	end
	if i%10000 == 0
		puts i
	end
	if test
		puts i
		break
	end
end