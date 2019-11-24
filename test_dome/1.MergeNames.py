def unique_names(names1, names2)
  unique = []
  names1.each do |n1|
    unless unique.include? n1
      unique.push(n1)
    end
  end
  names2.each do |n2|
    unless unique.include? n2
      unique.push(n2)
    end
  end
  return unique
end

names1 = ["Ava", "Emma", "Olivia"]
names2 = ["Olivia", "Sophia", "Emma"]
puts(unique_names(names1, names2)) # should print Ava, Emma, Olivia, Sophia
