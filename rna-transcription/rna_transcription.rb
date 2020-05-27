require 'pry'

class Complement
  class << self
    def of_dna(nucleotides)
      to_rna(nucleotides)
    end

    private

    RNA_TABLE = {
      ''  => '',
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }.freeze

    def to_rna(nucleotides)  # nucleotides:  [UGCACCAGAAUU, G, C, T] <- possiveis valores
      nucleotides.split('').map do |nucleotide|
        RNA_TABLE[nucleotide]
      end.join
    end
  end
end
