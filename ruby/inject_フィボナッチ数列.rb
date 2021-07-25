fib = [1, 1]
(0..10).each {|i| fib << fib[i] + fib[i+1]}
puts fib # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233]

puts (0..10).inject([1, 1]) {|fib, i| fib << fib[i] + fib[i+1] }
