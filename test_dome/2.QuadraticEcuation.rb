# param [Integer] a
# param [Integer] b
#param [Integer] c
#
# @return [Array[Float]]
#   An array of two elements containing both roots in any order
def find_roots(a, b, c)
  root = []

  root[0] = (-b + Math.sqrt(b.pow(2) - (4 * a * c)))/ (2 * a)
  root[1] = (-b - Math.sqrt(b.pow(2) - (4 * a * c))) / (2 * a)

  return root
end

puts find_roots(2, 10, 8)
