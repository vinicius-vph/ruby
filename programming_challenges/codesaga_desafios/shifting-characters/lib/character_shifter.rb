class CharacterShifter
  MOVE_LEFT = ":<" 
  MOVE_RIGHT = ":>" 
  SHIFT_CHARS_POSITION_EACH_OTHER = "<>"

  def execute(instructions, collection)
    instructions = instructions.split(' ') 
    collection = collection.dup 

    instructions.each do |inst|
      line = inst.first.to_i
  
      if inst.include?(MOVE_LEFT)
        left = (inst[-2]+inst[-1]).to_i 

        if left == 0
          left = inst.last.to_i
        end

        l =  collection[line].chars.rotate(left).join
        collection[line].replace(l)
      end  
      
      if inst.include?(MOVE_RIGHT)
        right = -(inst[-2]+inst[-1]).to_i 

        if right == 0
          right = -(inst.last.to_i)
        end

        r = collection[line].chars.rotate(right).join
        collection[line].replace(r)
      end
      
      if inst.include?(SHIFT_CHARS_POSITION_EACH_OTHER)
        position = (inst[-2]+inst[-1]).to_i 
        line_initial = inst.first.to_i
        line_final = inst[3].to_i
        
        if position == 0
          position = inst.last.to_i
        end

        char_1 = collection[line_initial].chars[position] 
        char_2 = collection[line_final].chars[position] 

        collection[line_initial][position] = char_2
        collection[line_final][position] = char_1
       
      end
    end
    collection
  end
end
