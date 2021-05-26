class Chars
  def unique_quantity(text)
    text_split = text.split
    encontra_repetidos = text_split.map {|c| c.each_char.to_a.uniq.count}
    soma_caracteres_unicos = encontra_repetidos.sum

  end
end
