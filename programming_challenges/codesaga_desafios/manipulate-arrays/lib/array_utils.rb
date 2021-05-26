class ArrayUtils
  def self.compara(lista1,lista2)
    lista1.sort.eql?(lista2.sort)
  end

  def self.divisiveis(lista1, lista2)
    div_ambos = []
    div_lista1 = []
    div_lista2 = []
    arr_divisiveis = [div_ambos,div_lista1,div_lista2]

    (0..50).each do |d| 
      if d !=0 
        div_ambos << d if d%lista1 == 0 and d%lista2 == 0
        div_lista1 << d if d%lista1 == 0 and d%lista2 != 0 
        div_lista2 << d if d%lista2 == 0 and d%lista1 != 0 
      end
    end

    arr_divisiveis
  end

  def self.soma(lista)
    lista.sum
  end

  def self.combinar(parametros_um, paramtros_dois)
    parametros_um.product(paramtros_dois)
  end  
end
