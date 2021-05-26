class Numbers
  def sum_text(numbers_text)
    numbers_text.split.map! {|x| x.to_i}.sum
  end
end
