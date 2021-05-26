class StringUtils

  def wavefy(string)
    string.chars.map.with_index do |char, i|
      i.even? ? char.downcase : char.upcase
    end.join
  end
end
