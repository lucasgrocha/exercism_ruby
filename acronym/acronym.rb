class Acronym
  class << self
    def abbreviate(phrase)
      abbreviaterify { phrase.split(/ |\-/) }.upcase
    end

    private

    def abbreviaterify
      yield.map { |word| word[0] }.join
    end
  end
end
