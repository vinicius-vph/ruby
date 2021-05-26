class SequenceReader
  def read(sequence, multiplier)
    sequences = []

    (1..multiplier).each do |times|
      sequences << sequence
            .split.map {|string| string
            .chars.chunk{|char| char}
            .map{|c, cc| sequence = "#{cc.size}#{c}"}
            }.flatten(1).join
          sequence = sequences[times-1]
    end
    sequences.last
  end
end
