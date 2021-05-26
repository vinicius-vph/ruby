class WordHunter
  def hunt(matrix, words)
    word_arr = []
    words.split(' ').select do |word|
      matrix_combination  = [matrix, matrix.transpose].flatten(1).map {|z| z.join}

      matrix_combination.select do |string| 
        word_arr << string.scan(/#{word}/)
        word_arr << string.reverse.scan(/#{word}/)
      end    
    end
    word_arr.uniq.flatten(1).sort.join(' ')
  end
end
