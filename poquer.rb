#RANK:
#Carta Alta : Carta de valor mais alto (de 2 a Ás).
#Um Par : Duas cartas do mesmo valor.
#Dois pares : dois pares diferentes.
#Trinca : Três cartas do mesmo valor.
#Straight : Todas as cartas são valores consecutivos.
#Flush : Todas as cartas do mesmo naipe.
#Full House : uma trinca e um par.
#Quadra : Quatro cartas do mesmo valor.
#Straight Flush : Todas as cartas têm valores consecutivos do mesmo naipe.
#Royal Flush : 10, Valete, Rainha, Rei, Ás, do mesmo naipe.

#Entrada
#As duas mãos de cartas 


#Processamento
#Percorrer as mãos 


#Saída
#Mão vencedora



FACES = "AKQJT98765432"
SUITS = "cdhs"

srand

#imprime as cartas
deck = []
FACES.each_byte do |f|
  SUITS.each_byte do |s|
    deck.push(f.chr + s.chr)
  end
end

#shuffle deck
3.times do 
  shuf = []
  deck.each do |c|
    loc = rand(shuf.size + 1)
    shuf.insert(loc, c)
  end 
  deck = shuf.reverse
end

common = Array.new(5){deck.pop}

hole = Array.new(8){Array.new(2) {deck.pop}}

hands = []
all_fold = true
while all_fold do
  hands = []
  hole.each do |h|
    num_common = [0, 3, 4, 5][rand (4)]

    puts " num_common = #{num_common}"

    if num_common ==5
      all_fold = false
    end
    if num_common > 0
      hand = h + common[0...num_common]
    else
      hand = h
    end
    hands.push(hand.join(' '))
  end
end
hands.each{|h| puts h}
#puts hole
#puts common
# puts deck
