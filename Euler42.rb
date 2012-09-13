start = Time.now
words = File.open("words42.txt").read.delete('"').split(',')
arr = (1..40).collect { |i| ((0.5*i)*(i+1)).floor }

def is_tri?(x)
	word_byte = x.bytes.to_a
	word_byte = word_byte.collect {|x| x - 64}.inject(:+)
	return word_byte
end
ans = 0
words.collect {|x| ans += 1 if arr.include?(is_tri?(x))}
puts "answer is: #{ans} in #{(Time.now - start).round(2)} ms."

