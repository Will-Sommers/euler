def factorial(n)
  return 1 if n == 0
  total = 1
  while n > 1
    total = total * n
    n = n - 1
  end
  total
end

def get_total(digits_array, factorials)
  digits_array.map { |n|
    factorials[n]
  }.inject(:+)
end

def digits_factorial(n, factorials)
  digits = n.to_s.split('')
  get_total(digits, factorials)
end

factorials = {}
(0..9).to_a.each do |n|
  factorials[n.to_s] = factorial(n)
end

def entry(n, factorials, chains)
  results = {}
  original_n = n
  i = 0
  while true
    total = digits_factorial(n, factorials)
    if results[n]
      chains[original_n] = i
      chains
      break
    else
      i += 1
      results[n] = i
      n = total
    end
  end
end


chains = {}
puts entry(69, factorials, chains)

a = Time.now
1.upto(100_000).each do |n|
  entry(n, factorials, chains)
end

puts Time.now - a
