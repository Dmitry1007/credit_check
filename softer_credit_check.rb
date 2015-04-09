account_id = 79927398713

chared = account_id.to_s.chars

multiplied = []
chared.each.with_index do |num,index|
  if index == 0
    multiplied << num
  elsif index.odd?
    multiplied << (num.to_i * 2).to_s
  else
    multiplied << num
  end
end

result = []
multiplied.each do |num|
  if num.size > 1
    result << (num.to_i-9)
  else
    result << num.to_i
  end
end

summed = result.inject(:+)

if summed % 10 == 0
  puts "VALID"
else
  puts "NOT VALID"
end
