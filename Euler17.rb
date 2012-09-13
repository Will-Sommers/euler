## DIRTY
a = "one two three four five six seven eight nine ten
eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen 
twenty thirty forty fifty sixty seventy eighty ninety hundred"

a = a.split(' ')

new_20_to_99_arr = []
a.slice(19,8).each {|x| 
	z = a.slice(0,9)
	z.unshift("")
	z.each {|y| 
		new_20_to_99_arr.push(x + y)
	}
}


arr = []
arr.push(a.slice(0, 10),a.slice(10,9))
arr.push(new_20_to_99_arr).flatten!


final = arr.slice(0,9)
new_101_to_999_arr = []
final.each { |x|
	arr.each {|y|
		new_101_to_999_arr.push(x+"hundredand"+y)
	}
}
new_hundreds = []
a.slice(0,9).map { |n| new_hundreds.push(n+"hundred")}

ans = arr + new_101_to_999_arr + new_hundreds 

print ans.push("onethousand").join.length

