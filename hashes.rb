dict = {one: "uno", two: "dos", three: "tres"}

dict.each do |key, value|
  p "#{key} : #{value}"

end

puts

#use .keys or .values atribute on a hash, retrieve a list with this elements
dict.keys.each do |key|
  p key
end

puts

dict.values.each do |value|
  p value
end
