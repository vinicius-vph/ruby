class Word
  def vowels_count(phrase)
    phrase.downcase.count('aáãeiouy')
  end

  def consonants_count(phrase)
    phrase.downcase.count('qwrtpsdfghjklzxcvbnm')
  end
end
