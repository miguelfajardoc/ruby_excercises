def group_by_owners(files)
  new_hash = {}
  files.each do |key, value|
    if new_hash.include? value
      new_hash[value] = new_hash[value].push(key)
    else
      new_hash[value] = [key]
    end
  end
  return new_hash
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}
puts group_by_owners(files)
