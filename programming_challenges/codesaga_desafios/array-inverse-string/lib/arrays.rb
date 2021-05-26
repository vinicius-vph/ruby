class Arrays
  def inverse_strings(array)
    array.difference(array.map {|x| x.reverse})  
  end
end
