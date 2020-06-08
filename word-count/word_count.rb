class Phrase

  FILTERED_WORDS = /\b[\w']+\b/.freeze

  attr_reader :words

  def initialize(phrase)
    @words = phrase.scan(FILTERED_WORDS).map(&:downcase)
  end

  def word_count
    words.tally
  end
end
