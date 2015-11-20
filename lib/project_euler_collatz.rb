def even_next(n)
  n = n / 2
end

def odd_next(n)
  n = (n * 3) + 1
end

def next_value(n)
  if n.even?
    even_next(n)
    n = even_next(n)
  else
    odd_next(n)
    n = odd_next(n)
  end
end

def collatz(n)
  collatz_array = []
  collatz_array << n
  until n == 1
    collatz_array << next_value(n)
     n = next_value(n)
    end
  collatz_array
end

def longest_collatz
  target = 3
 # longest = 0
   number_of_calcs = 0

  until target == 1000001
    n = target
    collatz(n)
      if collatz(n).length > number_of_calcs
        longest = target
        number_of_calcs = collatz(n).length
    end
  target += 1
  end
longest
end

