class Sequence
  def count_ordered(list)
    sequence = {}

    list.map do |string|
        string_pattern = [string.split(":")].flatten(1) 
        string_to_hash = {string_pattern.first => string_pattern.last.split} 
        
        string_to_hash.select do |name,value|
          
          value = value.map {|v| v.to_i}.sort
          
          days = value.chunk_while { |a, b| a.succ == b }
          .map {|seq_days| seq_days.size }.compact.sort.uniq
          
          sequence.store(name, days)          
        end

      end
      
      longest_sequence = sequence.values.sort {|y,z| z.sum <=> y.sum}.first
      people = sequence.key(longest_sequence)
      longest_sequence = longest_sequence.join(' ')
      
      "#{people}:#{longest_sequence}"
  end
end
