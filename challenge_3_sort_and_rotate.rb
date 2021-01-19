arr = [3, 4, 5, 1, 2]
check = [7, 9, 11, 12, 5]
array = [1, 2, 3]
#puts array.length
# puts "\n"

def check(arr)
  sort_array = arr.sort
  puts "sort_array = #{sort_array}"
  puts "--------------------"
  puts "-------arr= #{arr}"

  return "NO" if arr == sort_array #retorne NO quando arr == s
  arr.length.times do
    puts "arr.rotate! #{arr.rotate!}"
    return "YES" if arr == sort_array
  end
  "NO"
end

# puts check(arr)
# puts check(check)
# puts check(array)
