start = Time.now 
require "prime"

upper = 10**7
prime_factors = 4
solution = []
(1..upper).each { |x|
	if x.prime_division.length == prime_factors
		solution.push(x)
		if solution.length == prime_factors
			puts "#{solution}"
			break
		end
	else
		solution.clear
	end
}

puts "time #{Time.now - start}"


# puts "#{(Time.now - start).round(2)} ms."