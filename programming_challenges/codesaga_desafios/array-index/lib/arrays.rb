class Arrays
  def self.multiplica_indices(array)
    array.map.with_index {|elemento, indice| elemento * indice}
  end
end
