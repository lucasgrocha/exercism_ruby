class Pangram

  ALPHABET = ('a'..'z').to_a

  def self.pangram?(sentence)
    sentence.downcase!
    letters_of_sentence = sentence.scan(/[a-zA-Z]/).uniq.sort
    letters_of_sentence == ALPHABET
  end
end