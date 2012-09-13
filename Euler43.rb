require "mathn"

pan_dig, ans = "0123456789".split(//), 0
start = Time.now
pan_dig.permutation { |n| ans += n.join("").to_i if (n.slice(1, 3).join("").to_i.modulo(2) == 0) && (n.slice(2,3).join("").to_i.modulo(3) == 0) && (n.slice(3,3).join("").to_i.modulo(5) == 0) && (n.slice(4,3).join("").to_i.modulo(7) == 0) && (n.slice(5,3).join("").to_i.modulo(11) == 0) && (n.slice(6, 3).join("").to_i.modulo(13) == 0) && (n.slice(7,3).join("").to_i.modulo(17) == 0) }
puts "#{ans} in #{Time.now-start} ms"

pan_dig = "0123456789".split(//)
ans = 0
start = Time.now
primes = [2,3,5,7,11,13,17]

pan_dig.permutation { |n|
  if 1.upto(7).map { |i| n.slice(i, 3).join("").to_i % primes[i-1] == 0}.all?
    ans += n.join("").to_i
  end
}

puts "#{ans} in #{Time.now-start} ms"