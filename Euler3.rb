####The prime factors of 13195 are 5, 7, 13 and 29.

####What is the largest prime factor of the number 600851475143 ?
require "mathn"

x = 600851475143
i = 1

while (i += 2) do 
	if(i%10001 == 0)
		puts "at iteration #{i}"
	end
	if (i.prime?)
		if (x % i == 0)
			puts "#{i}"
		end
	end
	if (i > (x.div(2) + 1))
		puts "Ending..."
		break
	end
end
