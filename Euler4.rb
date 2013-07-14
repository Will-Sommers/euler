
def is_palindrome?(obj)
	obj.to_s == obj.to_s.reverse
end

max = 0

1.upto(999).each do |x|
	1.upto(999).each do |y|
		product = x * y
		max = product if max < product && is_palindrome?(product)
	end
end

puts max