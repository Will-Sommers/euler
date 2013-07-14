## Bouncy numbers 
s = Time.now
puts s
class Array
	def isBouncy?
		return true if self != self.sort && self != self.sort.reverse
	end
end

i = 0
bound = 2000000.0
(1..bound).each { |x|
	div = x.round(2)
	i += 1 if x.to_s.split("").isBouncy?
	break if i/div >= 0.99
}
puts "#{i/div}, #{i} / #{div}"
puts "#{Time.now-s}"