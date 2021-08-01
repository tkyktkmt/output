require 'time'

puts Time.parse('2000-01-01 00:00:00').to_i
# => 946652400

# Dateも可能
puts Time.parse('2000-01-01').to_i
# => 946652400

puts Time.at(946652400)
# => 2000-01-01 00:00:00 +0900