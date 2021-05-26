class DataFinder
  def find_and_multiply(list)
    
    permutations_arr = []
    
    list.permutation(2) {|permutation| permutations_arr << permutation }
    
    finded_data = 
    permutations_arr.map {|list_number|  
                          list_number.first-list_number.last == 1984 ? 
                          list_number[0,2] : nil}
                          .compact.flatten(1)
                          
                          
    finded_data.first * finded_data.last                      
  end
end
