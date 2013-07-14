file = File.open("11a.txt").read.split(' ').map(&:to_i)

num = []
i = 0
max = 0

## Building nested array
while (i<=(file.length-20))
	num.push(file[i, 20])
	i += 20
end

## left -> right
num.each do |x|
	i = -1
	while i += 1
		product = 0
		product = x.slice(i,4).inject(:*)
		max = product if product > max
		# puts "#{x.slice(i,4)} = #{x.slice(i,4).inject(:*)}"
 		break if i == 16
	end
end

## front diag

(0..16).each do |x|
	product = 0
	(0..16).each do |y|
		product = num[y][x] * num[y+1][x+1] * num[y+2][x+2] * num[y+3][x+3]
		max = product if product > max
		# puts "#{num[y][x]} #{ num[y+1][x+1]} #{num[y+2][x+2]} #{num[y+3][x+3]}"
	end 
end

## back diag
(3..19).each do |x|
	product = 0
	(0..16).each do |y|
		product = num[y][x] * num[y+1][x-1] * num[y+2][x-2] * num[y+3][x-3]
		if product > max
			max = product 
			puts max
			puts "#{num[y][x]} #{ num[y+1][x-1]} #{num[y+2][x-2]} #{num[y+3][x-3]}"
		end
	end
end

## up - > down
file.each do |x|
	i = -1
	while i += 1
		product = 0
		product = file[i] * file[i+20] * file[i+40] * file[i+60]
		max = product if product > max
		break if i + 60 == 399
	end		
end

print max