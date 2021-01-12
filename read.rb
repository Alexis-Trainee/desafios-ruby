#Chama a biblioteca 
require 'nokogiri'
require 'open-uri'

#cria-se uma variável de instancia e atribui-se o módulo Nokogiri responsável por chamar a url 
@doc = Nokogiri::HTML(URI.open("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"))

# variável armazena  a variável de instância @doc xpath é uma propriedade de Nokogiri para localizar trechos de texto em html ou xml 
# aqui as falas são retiradas do doc e salva como matriz
all_speeches = @doc.xpath("//speech").remove.to_a

#A partir da matriz de matrizes, fiz uma matriz de hashes para cada fala e suas linhas. Contagem
a = all_speeches.map{ |s| { s.css("speaker/text()").to_s => s.css("line").count } }

cache = Hash.new { |h, k| h[k] = { k => 0 } }
puts a.flat_map(&:to_a).each_with_object(cache) { |(k,v),h| h[k][k] += v }.values

#Deleta o Hash "ALL" https://qastack.com.br/programming/10034678/how-can-i-delete-one-element-from-an-array-by-value
cache.delete("ALL")
puts cache
