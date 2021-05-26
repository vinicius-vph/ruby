class DataFinder
  def find_and_sum(list, a, b)
    arr_eql_a = []
    arr_eql_b = []

    string_char_size = 
      list.map {|string| string.split('').sort.join
        .chars.chunk{|s| s}
        .map{|c, cc|  cc.size}
      }

    string_char_size
      .map {|letters| letters.uniq.select {|letter| 
                if letter.eql?(a) 
                  arr_eql_a << a
                elsif letter.eql?(b) 
                  arr_eql_b << b
                else
                  nil
                end            
              } 
            }

    arr_eql_a.size + arr_eql_b.size
    
  end
end
