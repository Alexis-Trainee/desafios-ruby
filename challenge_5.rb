#Two Product Problem
#Resolução da internet
 def two_product(arr, n)
   m = []
   arr.each do |i|
     next unless n % i == 0
     return [n / i, i] if m.include?(i)
     m << n / i
   end
   nil
 end
puts "Forma da internet"
puts two_product([1, 2, -1, 4, 5], 20)
puts "\n"

#Resolução feita em casa
def two_product(arr, n)
  m = []
  arr.each do |i|
    if n % i == 0
    return [n / i, i] if m.include?(i)
    m << n / i
  end
  end
  nil
end

puts "Forma de casa"
puts two_product([1, 2, -1, 4, 5], 20)
puts "\n"
puts two_product([1, 2, 3, 4, 5], 10)
puts "\n"
puts two_product([100, 12, 4, 1, 2], 15)

#terceira forma com ajuda da quêmia
def two_product(arr, n)
  m = []
  arr.each do |i|
    if n % i == 0
        x = n/i
    return [x, i] if m.include?(i)
    m << x
  end
  end
  nil
end

puts two_product([10, -1, 4, 5], 20)
puts "\n"
puts two_product([1, 2, 3, 4, 5], 10)
puts "\n"
puts two_product([100, 12, 4, 1, 2], 15)
puts "\n"
puts two_product([100, 12, 5, 5, 2, 3], 25)
