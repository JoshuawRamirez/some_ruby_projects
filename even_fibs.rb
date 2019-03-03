def fib (n)
  if n == 1 || n == 2
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

def fib_even_sum (number)
  array = []
  x = 0
  searching = true
  while searching
    x += 1
    array.push(fib(x))
    if array[-1] >= number
      array.pop
      searching = false
    end
  end
  evens = array.select {|number| number % 2 == 0}
  evens.inject(0, :+)
end
puts fib_even_sum(40000000)