t = []
p = []
h = []

1.upto(100000) do |n|
	p.push((n * (3* n - 1))/2)
	h.push(n * (2 * n - 1))
end

# p t[284]
# p p[164]
# p h[142]
# p t.length, p.length, h.length
puts p & h
