class Remainders
  def calculate(string)
  combination_arr = []

  string_to_a = string.split
  
  convert_and_sort = string_to_a
                                .map {|s| s.to_i}
                                .sort {|a, b| b <=> a } 

  convert_and_sort.combination(2) {|c| combination_arr << c}
  
  remainders =  combination_arr
                              .map {|remainder| 
                              remainder[0]%remainder[1] == 0 ? remainder : nil}
                              .compact.flatten!(1)
  
  remainders.sum  
  end
end
