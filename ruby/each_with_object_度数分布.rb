data = [:A, :B, :A, :C, :E, :A, :D, :B, :B, :C, :E]
puts data.each_with_object(Hash.new(0)) { |key, h| h[key] += 1 }
