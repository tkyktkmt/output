sum = 0
(1..10).each {|i| sum = sum + i }
puts sum # => 55

puts (1..10).inject(0) {|sum, i| sum + i } #=> 55
