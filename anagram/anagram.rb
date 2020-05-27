class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(candidates)
    filtred_word = filter_word(word)

    candidates.select do |candidate|
      next if candidate.downcase == word

      filter_candidate = filter_word(candidate)
      filter_candidate == filtred_word
    end
  end

  private

  def filter_word(word)
    word.downcase.split('').sort.join
  end
end
