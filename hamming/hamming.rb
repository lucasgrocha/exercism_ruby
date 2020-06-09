class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.size != strand_b.size

    strand_a.chars.zip(strand_b.chars).count do |genome_a, genome_b|
      genome_a != genome_b
    end
  end
end
