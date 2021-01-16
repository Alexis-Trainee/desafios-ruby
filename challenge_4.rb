# Car Park Exit

arr = [
  [1, 0, 10, 0, 2],
  [0, 0, 0, 0, 0]
]

#criação da função
def parking_exit(arr)
  #aray vazio
  result = []
  #variáveis
  level = 0; space = 0; azeite = 0
  #?
  #arr.each_with_index {|f, i| (level = i; space = f.index(2)) if f.index(2) != nil}
  arr.each_with_index {|f, i| (
    #level recebe index 
    level = i; 
    #space
    space = f.index(10)) if f.index(10) != nil}

  puts "level: #{level}"
  puts "space:#{space}"
  puts "azeite:#{azeite}"
  #####
end
#####
# begin
#   if level == arr.length - 1
#     if space != arr[0].length - 1
#       result << "R" + (arr[0].length - space - 1).to_s
#     end
#     # space = arr[0].length - 1
#   else
#     if arr[level][space] == 1
#       count = 0
#       while (arr[level][space] == 1 && level != arr.length ) do
#         level += 1;
#         count += 1
#       end
#       result << "D" + count.to_s
#     else
#       pos = arr[level].index(1)
#       d = pos < space ? "L" : "R"
#       result << d + ((pos-space).abs).to_s
#       space = pos
# end
# end
# end until (space == arr[0].length - 1 && level == arr.length - 1)

# result
# end

puts parking_exit(arr)

# arr = [  [1, 0, 0, 0, 5], [0, 0, 5, 0, 0],[5, 0, 0, 0, 0]]

#arr.each_with_index(2) do |value, index|
#   puts "#{index}: #{value}"
#end

#arr.each_with_index do |value, index|
#   puts "#{index}: #{value}"
#end
# arr.each_with_index do |f, i|
#   azeite = f
#   level = i
#   puts f.index(5)
#   space = f.index(5) if f.index(5) != nil
#   puts "level: #{level}"
#   puts "space:#{space}"
#   puts "azeite:#{azeite}"
#   puts "----------------"
# end
