
s = Time.now

class Integer 
    def palindrome?
        (self.to_s == self.to_s.reverse) ? true : false
    end
end

bound = 10000
arr = []
ans = []

1.upto(bound).each do |x|
    arr.push(x**2)
    1.upto(arr.length).each do |y|
        mid_total = arr.slice(-y,y).inject(:+)
        break if mid_total > 10**8
        ans.push(mid_total) if mid_total.palindrome? && arr.slice(-y,y).length > 1
    end
end

a = ans.uniq!.sort!.inject(:+)
puts 
puts "#{a} found in #{(Time.now - s).round(2)} sec"








# palin_arr = []
# i = 0
# while i += 1
#     palin_arr.push(i) if i.palindrome?
#     break if i == 10**8
# end

# print palin_arr

# puts "time #{Time.now - s}"