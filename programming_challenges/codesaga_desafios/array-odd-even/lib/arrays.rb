class Arrays
  def self.converte_impares_por(lista, numero)
    new_arr = []
    keep_odd_numbers = lista.keep_if {|item| item.odd?}
    new_arr.push(keep_odd_numbers)
      .push(keep_odd_numbers.map {|item| item * numero}) 
  end

  def self.converte_pares_por(lista, numero)
    new_arr = []
    keep_even_numbers = lista.keep_if {|item| item.even?}
    new_arr.push(keep_even_numbers)
      .push(keep_even_numbers.map {|item| item * numero}) 
  end
end
