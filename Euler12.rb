require "prime"

def factors_total(n)
	sum = (1..(Math.sqrt(n).ceil)).inject(0){ |sum,i| if(n%i == 0) then sum + 2 else sum end}
end




tri_total = 1
tri_prev = 0
tri_new = 0
i = 1
max = 0


while (i += 1) do
	tri_new = tri_prev + i
	tri_total += tri_new

	if (factors_total(tri_total) > max)
		max =  factors_total(tri_total)
		puts "New longest, #{tri_total} number with #{factors_total(tri_total)} divisors at #{Time.now} "
	end
	if (factors_total(tri_total) >= 500)
		puts "breaking"
		break
	end
end


