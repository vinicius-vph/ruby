class MisteryNumber
  def calculate(operation)
    (0..).each do |mn| 
      return mn if 
      eval(operation.gsub(/[?=]/,'?' => 'mn','=' => '=='))
    end 
  end
end
