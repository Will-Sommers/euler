
start = Time.now



def eight_nines(x)
	x = x.split("").map {|i| i.to_i**2}.inject(:+)
	x != 1 ? (x == 89? true : eight_nines(x.to_s)) : false
end

arr = []
(1..570).each do |x|
	x_str = x.to_s
	eight_nines(x_str) ? arr[x] = x : arr[x] = nil
end

ans = 0
("1".."1000000").each do |x|
	ans += 1 if arr[x.split("").map {|i| i.to_i**2}.inject(:+)] != nil
end 
puts "#{Time.now - start}sec and #{ans}"
