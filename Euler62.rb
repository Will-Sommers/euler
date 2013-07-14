## FASTER
s = Time.now


power = 3
lower = 1
upper = 50000

make_arr = []
(lower..upper).each_with_index {|x, i| make_arr.push([(x**power).to_s, i+ lower]) }

loop_arr = []
make_arr.each{ |y| loop_arr.push([y[0].split("").sort.join.to_i, y[1]])}
loop_arr = loop_arr.sort

puts "time #{Time.now - s}"
ans = []

pos = 0
loop_arr.each{ |x| 
	break if loop_arr[(pos+5)] == nil
	if x[0] == (loop_arr[(pos+1)][0] && loop_arr[(pos+2)][0] && loop_arr[(pos+3)][0] && loop_arr[(pos+4)][0])
		r = true
		(1..(power+1)).each {|inc|
			r = false if (loop_arr[pos+inc][1]**power).to_s.length != (x[1]**power).to_s.length
		}
		if r 
			ans.push(x[1])
		end
	end
	pos += 1
}

puts ans.min**3
puts "time #{Time.now - s}"
