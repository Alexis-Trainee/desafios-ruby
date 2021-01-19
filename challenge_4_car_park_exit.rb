# Car Park Exit

arr = [
  [1, 0, 0, 0, 2],
  [0, 0, 0, 0, 0]
]

def parking_exit(arr)
  result = []
  level = 0; space = 0
  arr.each_with_index {|f, i| (level = i; space = f.index(2)) if f.index(2) != nil}
  #############################################################################################################################
  #f.index()é um buscador que busca o index do número passado entre parenteses
  # arr.each_with_index do |f, i| 
  #puts "f itera cada elemento [[f1], [f2]]"
  #puts f #elemento iterador
  #puts '----------'
  # level = i; # O i é o índice
  # space = f.index(2) #Funciona como um buscador e procura o elemento passado entre parênteses no array
  # if f.index(2) != nil
  ##end
  #puts 'level'
  #puts level
  #puts 'space'
  #puts space
  #puts '-----------'
  #end
  #end
  ############################################################################################################################

  begin #inicia
    #comprimento do array -1 ou seja arr=[[1, 2], [3, 4]] retornaria 1 este um não é o numero 1 e sim o 1° elemento
    if level == arr.length - 1 
      #puts "\n"
      #puts "LEVEL #{level}" com estes puts é possível ver que level é igual a 1 portanto level é igual a arr.length -1

      if space != arr[0].length - 1 #refere-se ao número de elementos menos um ou seja se a matriz tem 5 elementos vai diminuir uma 
        result << "R" + (arr[0].length - space - 1).to_s #transforma a expressão em string e concatena com "R"
      end
      space = arr[0].length - 1 #número de colunas -1
    else
      if arr[level][space] == 1
        count = 0
        while (arr[level][space] == 1 && level != arr.length ) do
          level += 1;
          count += 1
        end
        result << "D" + count.to_s
      else
        pos = arr[level].index(1)
        d = pos < space ? "L" : "R"
        result << d + ((pos-space).abs).to_s
        space = pos
      end
    end
  end until (space == arr[0].length - 1 && level == arr.length - 1)

  result
end

puts parking_exit(arr) 
#####################################################################

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
