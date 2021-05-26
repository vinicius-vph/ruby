class ArrayUtils
  def self.multiplos(qtd, multiplo)
    arr_multiplos = Array.new(qtd + 1) {|index| index * multiplo}.drop(1)
  end
  
  def self.tabuada(qtd)
    arr_tabuada = []
    arr_multiplicador = Range.new(1,10).to_a
    cont = 1
    while arr_tabuada.length < qtd
      arr_tabuada << arr_multiplicador.map {|a| cont*a} 
      cont += 1
    end
    arr_tabuada
  end
end
