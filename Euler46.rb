s = Time.now

def sieve(n)
  s = (0..n).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| s[m] = nil }
  end
  return s
end

x = 40_000
i = 2

arr = sieve(x)
max = 0

while i += 1
  next if arr[i] != nil ||  i.even?
  max = i if (0..(Math.sqrt(i)).floor).all? { |x| arr[i-((2*(x**2)))] == nil}
  break if i > x || max > 0
end

puts "#{max} is the answer found in #{Time.now - s} seconds"