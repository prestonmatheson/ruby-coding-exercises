# Write a program that takes an argument n and returns the fibonacci value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.

# def fibonacci( n )
#   return  n  if ( 0..1 ).include? n
#   ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
# end




#this way makes more sense to me atm!

def fib(a, b = {})
  return a if a == 0 || a == 1
  b[a] ||= fib(a-1, b) + fib(a-2, b)
end

p fib(100)

