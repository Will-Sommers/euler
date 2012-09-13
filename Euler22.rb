names = File.open('names.txt').read.gsub('"',"").split(",").sort()


def total(x)
	word_byte = x.bytes.to_a
	word_byte = word_byte.collect {|x| x - 64}.inject(:+)
	return word_byte
end


sum = 0
names.each_with_index {|x, index|
	sum += (total(x)*(index+1))
	# i+=1
}
puts sum