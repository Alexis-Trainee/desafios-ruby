#desafio 1 Expensive Orders
def expensive_order(hash, k)
  hash.select {|a, b| b > k}
end

puts expensive_order({ "a" => 3000, "b" => 200, "c" => 1050 }, 1000)

######################################

