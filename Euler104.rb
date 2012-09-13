    def is_pandigital?(num)
      num = num.to_s
      first = num[0,9].split('')
      first.delete("0")
      return first.uniq.count == 9
    end

    pre_fib = 0
    cur_fib = 1
    new_fib = 0

    i = 1

    puts "Standard fibonacci accumulation"

    # use standard fibonacci iteration to
    # get a sufficiently big number
    # it's known (from prev runs) that there
    # are no solutions before 10e40
    while(i += 1) do

      new_fib = pre_fib + cur_fib
      pre_fib = cur_fib
      cur_fib = new_fib

      # number is big enough that we have enough
      # separation between upper and lower digits 
      break if((cur_fib / 10e100).round != 0)

    end

    pre_upper = 0
    cur_upper = 0
    new_upper = 0

    pre_lower = 0
    cur_lower = 0
    new_lower = 0

    # now start summing the upper digits
    # and lower digits separately
    
    puts "At i = %s, switching to separate summation of upper and lower 9 digits" % i

    def truncate(digits, take_front=true, places=9)
      digi_string = digits.to_s
      if(digi_string.length > places)
        return digi_string.slice(take_front ? 0 : -places, places).to_i
      else
        return digi_string.to_i
      end
    end

    saved_upper_digits = 15

    pre_upper = truncate(pre_fib, true, saved_upper_digits)
    cur_upper = truncate(cur_fib, true, saved_upper_digits)

    pre_lower = truncate(pre_fib, false, 9)
    cur_lower = truncate(cur_fib, false, 9)

    overflowed = false

    while(i += 1) do

      new_upper = (overflowed ? pre_upper / 10 : pre_upper) + cur_upper
      new_lower = pre_lower + cur_lower

      if new_upper.to_s.length > saved_upper_digits
        overflowed = true
      else
        overflowed = false
      end

      # shorten to 9 digits
      new_upper = truncate(new_upper, true, saved_upper_digits)
      new_lower = truncate(new_lower, false, 9)

      # shift the variables
      pre_upper = cur_upper
      cur_upper = new_upper

      pre_lower = cur_lower
      cur_lower = new_lower

      if(i % 25000 == 0)
        puts "at iteration %s" % i
      end

      if is_pandigital?(cur_upper) and is_pandigital?(cur_lower)
        puts "Upper digits are found to be %s" % cur_upper
        puts "Lower digits are found to be %s" % cur_lower
        puts "Number is at position %s" % i 
        break
      end

    end