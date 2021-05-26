class Spirardigrada
  def devour(matrix)
    spirardigrada_belly = []
    matrix = matrix

    while matrix.size > 0
      spirardigrada_belly << matrix.shift
      matrix = matrix.transpose.reverse
    end 

    spirardigrada_belly.flatten.join(" ")

  end 
end
