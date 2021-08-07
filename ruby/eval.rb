array = ["aaa","bbb","ccc","ddd"]

array.each.with_index(1) do |array, i|
  # var = "@name#{i}"
  eval("@name#{i} = array")
end
num = rand(1..4)
eval("@namenum = @name#{num}")
puts @namenum
puts @name2
puts @name3
puts @name4