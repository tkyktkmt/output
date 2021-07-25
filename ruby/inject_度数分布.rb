data = [:A, :B, :A, :C, :E, :A, :D, :B, :B, :C, :E]
h = Hash.new(0)
data.each {|key| h[key] += 1 }
puts h # => {:A=>3, :B=>3, :C=>2, :E=>2, :D=>1}

data = [:A, :B, :A, :C, :E, :A, :D, :B, :B, :C, :E]
puts data.inject(Hash.new(0)) {|h, key| h[key] += 1; h }
