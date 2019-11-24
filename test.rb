def unique_names(names1, names2)
  
  unique = []
  j = 0
  puts names1.size

  for i in 0..names1.size do
    puts names1[i]
    unique[j] = names1[i]
    j += 1
      unless names1[i] == names2[i]
          unique[j] = names2[i]
          j += 1
      end
  end
  return unique

end

names1 = ["Ava", "Emma", "Olivia"]
names2 = ["Olivia", "Sophia", "Emma"]
puts(unique_names(names1, names2)) # should print Ava, Emma, Olivia, Sophia
