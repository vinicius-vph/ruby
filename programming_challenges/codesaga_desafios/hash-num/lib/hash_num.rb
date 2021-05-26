class HashNum
  def find_sequence(num_set, list)
    
    list.map do |string|
      arr = []
      string.each_char do |char|
        num_set.select do |key, value| 
          if value.include?(char) and arr.last.to_i < key.to_s.to_i
           arr << key.to_s; break 
          end    
        end
      end
      result = string.size.eql?(arr.size) ? arr.join : nil
    end
  end
end
