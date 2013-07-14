### MY CODE


# def lychrel?(n, x)
# 	a = n + n.to_s.reverse.to_i
# 	if a != a.to_s.reverse.to_i
# 		if x < 50
# 			puts "#{x} --- #{a + a.to_s.reverse.to_i}"
# 			lychrel?(a, x+1)
# 		elsif x == 50
# 			return 1
# 		end
# 	elsif a == a.to_s.reverse.to_i
# 		puts "#{x} --- #{a + a.to_s.reverse.to_i}"
# 		return 0
# 	end
# end
# # puts lychrel?(196, 1)
# # puts lychrel?(9999, 1)
# sum = 0
# (1..9999).each do |x|
# 	sum += lychrel?(x, 1)
# 	puts "#{sum} and #{x}"
# end
# puts sum

#### END MY CODE


### OTHER CODE
class Integer 
	def rev
		return self.to_s.reverse.to_i
	end
	def palindrome?
		return true if self.to_s == self.to_s.reverse
		return false
	end
end

LIMIT = 50
lychrels = []

1.upto(100000) do |i|
	current = i
	isLychrel = true

	LIMIT.times do
		current = current + current.rev
		if current.palindrome? == true
			isLychrel = false
			break
		end
	end
	lychrels.push(i) if isLychrel == true
end

print "Number of lychrels below 10000: " + lychrels.length.to_s








