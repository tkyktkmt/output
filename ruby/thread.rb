require "pry"

# threads = []
# a = 0
# threads << Thread.new do
#   a += 1
# end
# threads << Thread.new do
#   a += 10
# end
# threads.each(&:join)
# puts a


a = 0
def num(i)
  a = a + i
end

th = []
th << Thread.new{ num(2) }
# th << Thread.new{ num(10) }
th.each(&:join)
puts a