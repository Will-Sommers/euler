class Integer
	def bin_palindrome?
		return true if self.to_s(2) == self.to_s(2).reverse
		return false
	end
	def palindrome?
		return true if self.to_s == self.to_s.reverse
		return false
	end
end


double_base_palindromes = []


1.upto(1000000) do |i|
	current = i
	double_base_palindromes.push(i) if i.bin_palindrome? == true && i.palindrome? == true
	if i % 10000 == 0
		puts i
	end
end
print double_base_palindromes
total = double_base_palindromes.inject(:+)
puts total
## double_base_palindromes.push(i)