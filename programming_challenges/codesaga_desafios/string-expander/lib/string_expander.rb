class StringExpander
  def expand(instructions)
    instructions_slices = []
    word_repeater = 1

    instructions
                .gsub('x', '').scan(/\d+|[[:alnum:]]+/)
                .map { |string| 
                  if string.to_i.zero? and string !='0'
                    instructions_slices << string * word_repeater
                    word_repeater = 1
                   else
                    word_repeater *= string.to_i
                  end  
                }

    uncompressed_message = instructions_slices.join                
          
  end
end
