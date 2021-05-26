class Arrays
  def self.multiplica_antecessor_predecessor(array)
    new_arr = []

    new_arr << array[0] * array[1]
    array.map.with_index {|e,i| i >= 2 ? new_arr << e * array[i-2] : nil}
    new_arr << array[-1] * array[-2]
    new_arr
  end
end

