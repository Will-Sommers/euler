
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


def divisor_sum(n, x) 
 
	a = (1..(n-1)).select { |x| (n % x).zero?}.inject(:+)
  divisor_sum(a,x-1)
  return if x == 0
end

p divisor_sum(220,10)
