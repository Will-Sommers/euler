require "mathn"

def judge_length(x)
	x = x.to_s.split("/")
	if x[0].length > x[1].length
		return true
	else 
		return false
	end
end

puts judge_length("1030/200")

# def frac_rec(i, x)
# 	sum = 1 + (2/i)
# 	frac_rec(, x)
# 	return if i == 10
# end

# puts frac_rec(1, 10)

a = [3/2, 7/5, 17/12]
curr_dem = 12
curr_num = 17
prev_dem = 5
prev_num = 7
new_num = 0
new_dem = 0
# a_cur = a[2].split("/")
# a_last = a[1].split("/")
# a_next = 0
i = 3
ans = 0
while (i += 1) do 
	new_num = ((curr_num * 2)+prev_num)
	new_dem = ((curr_dem*2)+prev_dem)
	prev_dem = curr_dem
	prev_num = curr_num
	curr_num = new_num
	curr_dem = new_dem
	if new_num.to_s.split("").length > new_dem.to_s.split("").length
		ans +=1
		puts "#{i} -- #{new_num} / #{new_dem} and #{ans}"
	end
	
	break if i == 1000
end








