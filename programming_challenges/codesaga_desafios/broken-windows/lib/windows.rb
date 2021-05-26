class Windows
  def execute(actions)
    array = Array.new(10) { Array.new(10, 'repaired') }

    actions = actions.split("\n").map { |el| el.split(' ') }

    actions.map do |window| 
      (window[0][0].to_i..window[1][0].to_i).each do |int_pos|
        (window[0][2].to_i..window[1][2].to_i).each do |float_pos|
          if window[2].include? 'O'
            array[int_pos.to_i][float_pos.to_i] = 'repaired'
          end
          if window[2].include? 'X'
            array[int_pos.to_i][float_pos.to_i] = 'broken'
          end
        end
      end
    end

    array.map do |w| w.count("broken") end.sum
  end
end